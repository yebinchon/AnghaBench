; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendFileNo.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendFileNo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmp_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.rmp_packet }

@RMP_BOOT_REPL = common dso_local global i32 0, align 4
@RMP_VERSION = common dso_local global i32 0, align 4
@C_MAXFILE = common dso_local global i32 0, align 4
@RMPBOOTDATA = common dso_local global i64 0, align 8
@RMP_E_OKAY = common dso_local global i32 0, align 4
@RMP_E_NODFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendFileNo(%struct.rmp_packet* %0, %struct.TYPE_6__* %1, i8** %2) #0 {
  %4 = alloca %struct.rmp_packet*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.rmp_packet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.rmp_packet* %0, %struct.rmp_packet** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %12 = load %struct.rmp_packet*, %struct.rmp_packet** %4, align 8
  %13 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @GETWORD(i32 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.rmp_packet* %19, %struct.rmp_packet** %7, align 8
  %20 = load i32, i32* @RMP_BOOT_REPL, align 4
  %21 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %22 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %26 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PUTWORD(i32 %24, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %33 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @RMP_VERSION, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %38 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 8
  %40 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %41 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i64* %42, i64** %10, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @C_MAXFILE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %3
  %48 = load i8**, i8*** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %97

54:                                               ; preds = %47
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %61 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %88, %54
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RMPBOOTDATA, align 8
  %73 = icmp slt i64 %71, %72
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ false, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %92

76:                                               ; preds = %74
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %92

82:                                               ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  store i8 %85, i8* %86, align 1
  br label %88

88:                                               ; preds = %82
  %89 = load i64*, i64** %10, align 8
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %64

92:                                               ; preds = %81, %74
  %93 = load i32, i32* @RMP_E_OKAY, align 4
  %94 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %95 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %47, %3
  %98 = load i32, i32* @RMP_E_NODFLT, align 4
  %99 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %100 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i64*, i64** %10, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @RMPBOOTSIZE(i64 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = call i32 @SendPacket(%struct.TYPE_6__* %108)
  ret i32 %109
}

declare dso_local i32 @GETWORD(i32, i32) #1

declare dso_local i32 @PUTWORD(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @RMPBOOTSIZE(i64) #1

declare dso_local i32 @SendPacket(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
