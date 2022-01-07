; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_init_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, i32, %struct.ds_smsg*, i8*, i8* }
%struct.ds_smsg = type { %struct.ds_smsg* }

@RS_SNDLOWAT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@udp_svc = common dso_local global i32 0, align 4
@RS_SVC_ADD_DGRAM = common dso_local global i32 0, align 4
@rs_readable = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @ds_init_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_init_ep(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.ds_smsg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %8 = call i32 @ds_set_qp_size(%struct.rsocket* %7)
  %9 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RS_SNDLOWAT, align 4
  %13 = call i8* @calloc(i32 %11, i32 %12)
  %14 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %17 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %16, i32 0, i32 6
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @ERR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %96

23:                                               ; preds = %1
  %24 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i8* @calloc(i32 %27, i32 1)
  %29 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 7
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %96

38:                                               ; preds = %23
  %39 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %43 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %48 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.ds_smsg*
  %53 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %54 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %53, i32 0, i32 5
  store %struct.ds_smsg* %52, %struct.ds_smsg** %54, align 8
  %55 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %56 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %55, i32 0, i32 5
  %57 = load %struct.ds_smsg*, %struct.ds_smsg** %56, align 8
  store %struct.ds_smsg* %57, %struct.ds_smsg** %4, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %77, %38
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %61 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %67 = bitcast %struct.ds_smsg* %66 to i8*
  %68 = load i32, i32* @RS_SNDLOWAT, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to %struct.ds_smsg*
  %72 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %73 = getelementptr inbounds %struct.ds_smsg, %struct.ds_smsg* %72, i32 0, i32 0
  store %struct.ds_smsg* %71, %struct.ds_smsg** %73, align 8
  %74 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %75 = getelementptr inbounds %struct.ds_smsg, %struct.ds_smsg* %74, i32 0, i32 0
  %76 = load %struct.ds_smsg*, %struct.ds_smsg** %75, align 8
  store %struct.ds_smsg* %76, %struct.ds_smsg** %4, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.ds_smsg*, %struct.ds_smsg** %4, align 8
  %82 = getelementptr inbounds %struct.ds_smsg, %struct.ds_smsg* %81, i32 0, i32 0
  store %struct.ds_smsg* null, %struct.ds_smsg** %82, align 8
  %83 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %84 = load i32, i32* @RS_SVC_ADD_DGRAM, align 4
  %85 = call i32 @rs_notify_svc(i32* @udp_svc, %struct.rsocket* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @rs_readable, align 4
  %92 = load i32, i32* @rs_writable, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %95 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %90, %88, %35, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ds_set_qp_size(%struct.rsocket*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_notify_svc(i32*, %struct.rsocket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
