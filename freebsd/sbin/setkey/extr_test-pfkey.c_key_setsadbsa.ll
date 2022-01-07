; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_key_setsadbsa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_key_setsadbsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_sa = type { i32, i64, i32, i32, i64, i32, i32, i32 }

@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_AALG_MD5HMAC = common dso_local global i32 0, align 4
@SADB_EALG_DESCBC = common dso_local global i32 0, align 4
@m_buf = common dso_local global i64 0, align 8
@m_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_setsadbsa() #0 {
  %1 = alloca %struct.sadb_sa, align 8
  %2 = call i32 @PFKEY_UNIT64(i32 48)
  %3 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 7
  store i32 %2, i32* %3, align 8
  %4 = load i32, i32* @SADB_EXT_SA, align 4
  %5 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 6
  store i32 %4, i32* %5, align 4
  %6 = call i32 @htonl(i32 305419896)
  %7 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 5
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @SADB_AALG_MD5HMAC, align 4
  %11 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SADB_EALG_DESCBC, align 4
  %13 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %1, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* @m_buf, align 8
  %16 = load i64, i64* @m_len, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @memcpy(i64 %17, %struct.sadb_sa* %1, i32 48)
  %19 = load i64, i64* @m_len, align 8
  %20 = add i64 %19, 48
  store i64 %20, i64* @m_len, align 8
  ret void
}

declare dso_local i32 @PFKEY_UNIT64(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i64, %struct.sadb_sa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
