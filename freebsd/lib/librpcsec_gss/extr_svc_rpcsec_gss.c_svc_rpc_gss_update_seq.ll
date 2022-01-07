; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_update_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_update_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i64, i64* }

@SVC_RPC_GSS_SEQWINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*, i64)* @svc_rpc_gss_update_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_update_seq(%struct.svc_rpc_gss_client* %0, i64 %1) #0 {
  %3 = alloca %struct.svc_rpc_gss_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %11, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %17 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %23 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %32 = sdiv i32 %31, 32
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64*, i64** %11, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 32
  store i32 %55, i32* %5, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %90, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SVC_RPC_GSS_SEQWINDOW, align 4
  %63 = sdiv i32 %62, 32
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %60
  %66 = load i64*, i64** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 32, %71
  %73 = zext i32 %72 to i64
  %74 = ashr i64 %70, %73
  store i64 %74, i64* %10, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = shl i64 %79, %81
  %83 = load i64, i64* %9, align 8
  %84 = or i64 %82, %83
  %85 = load i64*, i64** %11, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %65
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %60

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93, %56
  %95 = load i64*, i64** %11, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %101 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %122

102:                                              ; preds = %2
  %103 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %104 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %4, align 8
  %107 = sub nsw i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sdiv i32 %109, 32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %5, align 4
  %112 = srem i32 %111, 32
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = shl i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = load i64*, i64** %11, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %115
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %102, %94
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
