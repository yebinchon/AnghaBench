; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_key_setsadbprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_test-pfkey.c_key_setsadbprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_prop = type { i64*, i64, i32, i32 }
%struct.sadb_comb = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@SADB_EXT_PROPOSAL = common dso_local global i32 0, align 4
@SADB_AALG_MD5HMAC = common dso_local global i32 0, align 4
@SADB_EALG_DESCBC = common dso_local global i32 0, align 4
@SADB_AALG_SHA1HMAC = common dso_local global i32 0, align 4
@SADB_EALG_3DESCBC = common dso_local global i32 0, align 4
@m_buf = common dso_local global i32 0, align 4
@m_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_setsadbprop() #0 {
  %1 = alloca %struct.sadb_prop, align 8
  %2 = alloca %struct.sadb_comb*, align 8
  %3 = alloca [256 x i32], align 16
  %4 = alloca i32, align 4
  store i32 40, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @PFKEY_UNIT64(i32 %5)
  %7 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @SADB_EXT_PROPOSAL, align 4
  %9 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %1, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %21 = bitcast i32* %20 to %struct.sadb_comb*
  store %struct.sadb_comb* %21, %struct.sadb_comb** %2, align 8
  %22 = load i32, i32* @SADB_AALG_MD5HMAC, align 4
  %23 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %24 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %23, i32 0, i32 15
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SADB_EALG_DESCBC, align 4
  %26 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %27 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %29 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %28, i32 0, i32 13
  store i64 0, i64* %29, align 8
  %30 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %31 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %30, i32 0, i32 0
  store i32 8, i32* %31, align 8
  %32 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %33 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %32, i32 0, i32 1
  store i32 96, i32* %33, align 4
  %34 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %35 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %34, i32 0, i32 2
  store i32 64, i32* %35, align 8
  %36 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %37 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %36, i32 0, i32 3
  store i32 64, i32* %37, align 4
  %38 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %39 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %38, i32 0, i32 12
  store i64 0, i64* %39, align 8
  %40 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %41 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %40, i32 0, i32 11
  store i64 0, i64* %41, align 8
  %42 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %43 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %45 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %47 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %49 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %51 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %53 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %55 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %57 = getelementptr inbounds i32, i32* %56, i64 104
  %58 = bitcast i32* %57 to %struct.sadb_comb*
  store %struct.sadb_comb* %58, %struct.sadb_comb** %2, align 8
  %59 = load i32, i32* @SADB_AALG_SHA1HMAC, align 4
  %60 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %61 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @SADB_EALG_3DESCBC, align 4
  %63 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %64 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %66 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %65, i32 0, i32 13
  store i64 0, i64* %66, align 8
  %67 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %68 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %67, i32 0, i32 0
  store i32 8, i32* %68, align 8
  %69 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %70 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %69, i32 0, i32 1
  store i32 96, i32* %70, align 4
  %71 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %72 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %71, i32 0, i32 2
  store i32 64, i32* %72, align 8
  %73 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %74 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %73, i32 0, i32 3
  store i32 64, i32* %74, align 4
  %75 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %76 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %78 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %77, i32 0, i32 11
  store i64 0, i64* %78, align 8
  %79 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %80 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %79, i32 0, i32 10
  store i64 0, i64* %80, align 8
  %81 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %82 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %81, i32 0, i32 9
  store i64 0, i64* %82, align 8
  %83 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %84 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  %85 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %86 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %85, i32 0, i32 7
  store i64 0, i64* %86, align 8
  %87 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %88 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %90 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load %struct.sadb_comb*, %struct.sadb_comb** %2, align 8
  %92 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @m_buf, align 4
  %94 = load i32, i32* @m_len, align 4
  %95 = ptrtoint %struct.sadb_prop* %1 to i32
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  %97 = call i32 @key_setsadbextbuf(i32 %93, i32 %94, i32 %95, i32 24, i32* %96, i32 208)
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @m_len, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* @m_len, align 4
  ret void
}

declare dso_local i32 @PFKEY_UNIT64(i32) #1

declare dso_local i32 @key_setsadbextbuf(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
