; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_init_hmac_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_init_hmac_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, %struct.auth_hash* }
%struct.auth_hash = type { i32, i32, i32 (i8*, %union.authctx*)*, i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*)* }
%union.authctx = type { i32 }

@HMAC_IPAD_VAL = common dso_local global i8 0, align 1
@HMAC_OPAD_VAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_session*, i32, i8*, i32)* @ccp_init_hmac_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_init_hmac_digest(%struct.ccp_session* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ccp_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.authctx, align 4
  %10 = alloca %struct.auth_hash*, align 8
  %11 = alloca i64, align 8
  store %struct.ccp_session* %0, %struct.ccp_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %13 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.auth_hash*, %struct.auth_hash** %14, align 8
  store %struct.auth_hash* %15, %struct.auth_hash** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %20 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %4
  %24 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %25 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %24, i32 0, i32 4
  %26 = load i32 (%union.authctx*)*, i32 (%union.authctx*)** %25, align 8
  %27 = call i32 %26(%union.authctx* %9)
  %28 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %29 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %28, i32 0, i32 3
  %30 = load i32 (%union.authctx*, i8*, i32)*, i32 (%union.authctx*, i8*, i32)** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 %30(%union.authctx* %9, i8* %31, i32 %32)
  %34 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %35 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %34, i32 0, i32 2
  %36 = load i32 (i8*, %union.authctx*)*, i32 (i8*, %union.authctx*)** %35, align 8
  %37 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %38 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 %36(i8* %40, %union.authctx* %9)
  %42 = call i32 @explicit_bzero(%union.authctx* %9, i32 4)
  %43 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %44 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %4
  %47 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %48 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %23
  %55 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %56 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %64 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @memset(i32 %62, i32 0, i32 %67)
  %69 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %70 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %74 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %78 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i8* %72, i8* %76, i32 %79)
  store i64 0, i64* %11, align 8
  br label %81

81:                                               ; preds = %113, %54
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.auth_hash*, %struct.auth_hash** %10, align 8
  %84 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %81
  %89 = load i8, i8* @HMAC_IPAD_VAL, align 1
  %90 = sext i8 %89 to i32
  %91 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %92 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = xor i32 %98, %90
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  %101 = load i8, i8* @HMAC_OPAD_VAL, align 1
  %102 = sext i8 %101 to i32
  %103 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %104 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = xor i32 %110, %102
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %113

113:                                              ; preds = %88
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %81

116:                                              ; preds = %81
  ret void
}

declare dso_local i32 @explicit_bzero(%union.authctx*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
