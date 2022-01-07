; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_pxe.c_pxe_netif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.iodesc = type { i32*, i64 }
%struct.TYPE_8__ = type { i64, i32, i32*, i32*, i32 }

@PXENV_UNDI_GET_INFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"undi get info failed: %x\0A\00", align 1
@bootp_response = common dso_local global %struct.TYPE_9__* null, align 8
@FLTR_DIRECTED = common dso_local global i32 0, align 4
@FLTR_BRDCST = common dso_local global i32 0, align 4
@PXENV_UNDI_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"undi open failed: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iodesc*, i8*)* @pxe_netif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxe_netif_init(%struct.iodesc* %0, i8* %1) #0 {
  %3 = alloca %struct.iodesc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iodesc* %0, %struct.iodesc** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call %struct.TYPE_8__* @bio_alloc(i32 40)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %160

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call i32 @bzero(%struct.TYPE_8__* %15, i32 40)
  %17 = load i32, i32* @PXENV_UNDI_GET_INFORMATION, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @pxe_call(i32 %17, %struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @bio_free(%struct.TYPE_8__* %29, i32 40)
  br label %160

31:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %32

52:                                               ; preds = %47, %32
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %59

79:                                               ; preds = %74, %59
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %7, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %7, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @min(i32 8, i32 %97)
  store i32 %98, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %115, %94
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %110 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bootp_response, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bootp_response, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %126 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %130

127:                                              ; preds = %118
  %128 = load %struct.iodesc*, %struct.iodesc** %3, align 8
  %129 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %121
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = call i32 @bio_free(%struct.TYPE_8__* %131, i32 40)
  %133 = call %struct.TYPE_8__* @bio_alloc(i32 40)
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %6, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = icmp eq %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %160

137:                                              ; preds = %130
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = call i32 @bzero(%struct.TYPE_8__* %138, i32 40)
  %140 = load i32, i32* @FLTR_DIRECTED, align 4
  %141 = load i32, i32* @FLTR_BRDCST, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @PXENV_UNDI_OPEN, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = call i32 @pxe_call(i32 %145, %struct.TYPE_8__* %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %137
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %155)
  br label %157

157:                                              ; preds = %152, %137
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = call i32 @bio_free(%struct.TYPE_8__* %158, i32 40)
  br label %160

160:                                              ; preds = %157, %136, %24, %13
  ret void
}

declare dso_local %struct.TYPE_8__* @bio_alloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pxe_call(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @bio_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
