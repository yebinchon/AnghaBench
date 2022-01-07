; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_sendip.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_sendip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.iodesc = type { %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.ip = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32 }

@IPVERSION = common dso_local global i32 0, align 4
@IPDEFTTL = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i64 0, align 8
@netmask = common dso_local global i64 0, align 8
@gateip = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sendip: bad write (%zd != %zd)\00", align 1
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendip(%struct.iodesc* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iodesc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip*, align 8
  %12 = alloca i32*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.ip*
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i64 -1
  store %struct.ip* %15, %struct.ip** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 40
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ip*, %struct.ip** %11, align 8
  %19 = call i32 @bzero(%struct.ip* %18, i32 40)
  %20 = load i32, i32* @IPVERSION, align 4
  %21 = load %struct.ip*, %struct.ip** %11, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ip*, %struct.ip** %11, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 0
  store i32 10, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @htons(i64 %25)
  %27 = load %struct.ip*, %struct.ip** %11, align 8
  %28 = getelementptr inbounds %struct.ip, %struct.ip* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ip*, %struct.ip** %11, align 8
  %31 = getelementptr inbounds %struct.ip, %struct.ip* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @IPDEFTTL, align 4
  %33 = load %struct.ip*, %struct.ip** %11, align 8
  %34 = getelementptr inbounds %struct.ip, %struct.ip* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ip*, %struct.ip** %11, align 8
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %35, i32 0, i32 3
  %37 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %38 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_6__* %36 to i8*
  %40 = bitcast %struct.TYPE_6__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = load %struct.ip*, %struct.ip** %11, align 8
  %42 = getelementptr inbounds %struct.ip, %struct.ip* %41, i32 0, i32 2
  %43 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %44 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_6__* %42 to i8*
  %46 = bitcast %struct.TYPE_6__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = load %struct.ip*, %struct.ip** %11, align 8
  %48 = call i32 @in_cksum(%struct.ip* %47, i32 40)
  %49 = load %struct.ip*, %struct.ip** %11, align 8
  %50 = getelementptr inbounds %struct.ip, %struct.ip* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ip*, %struct.ip** %11, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INADDR_BROADCAST, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %4
  %58 = load %struct.ip*, %struct.ip** %11, align 8
  %59 = getelementptr inbounds %struct.ip, %struct.ip* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* @netmask, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load %struct.ip*, %struct.ip** %11, align 8
  %68 = getelementptr inbounds %struct.ip, %struct.ip* %67, i32 0, i32 3
  %69 = load %struct.ip*, %struct.ip** %11, align 8
  %70 = getelementptr inbounds %struct.ip, %struct.ip* %69, i32 0, i32 2
  %71 = load i64, i64* @netmask, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @SAMENET(i64 %73, i64 %75, i64 %71)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66, %63, %57, %4
  %79 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %80 = load %struct.ip*, %struct.ip** %11, align 8
  %81 = getelementptr inbounds %struct.ip, %struct.ip* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32* @arpwhohas(%struct.iodesc* %79, i64 %83)
  store i32* %84, i32** %12, align 8
  br label %89

85:                                               ; preds = %66
  %86 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gateip, i32 0, i32 0), align 8
  %88 = call i32* @arpwhohas(%struct.iodesc* %86, i64 %87)
  store i32* %88, i32** %12, align 8
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.iodesc*, %struct.iodesc** %6, align 8
  %91 = load %struct.ip*, %struct.ip** %11, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* @ETHERTYPE_IP, align 4
  %95 = call i32 @sendether(%struct.iodesc* %90, %struct.ip* %91, i64 %92, i32* %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %113

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %106)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, 40
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %98
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @bzero(%struct.ip*, i32) #1

declare dso_local i32 @htons(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in_cksum(%struct.ip*, i32) #1

declare dso_local i64 @SAMENET(i64, i64, i64) #1

declare dso_local i32* @arpwhohas(%struct.iodesc*, i64) #1

declare dso_local i32 @sendether(%struct.iodesc*, %struct.ip*, i64, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
