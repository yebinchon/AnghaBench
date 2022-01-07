; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devrecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devrecv(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @EINVAL, align 8
  store i64 %23, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %154

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = call i32 @FD_ZERO(i32* %11)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @FD_SET(i32 %29, i32* %11)
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %47, %27
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @select(i32 %36, i32* %11, i32* null, i32* null, %struct.timeval* %12)
  store i32 %37, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EAGAIN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EINTR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  br label %34

48:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %154

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %53, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %154

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @FD_ISSET(i32 %55, i32* %11)
  %57 = call i32 @assert(i32 %56)
  br label %58

58:                                               ; preds = %54, %24
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @read(i32 %60, i8* %61, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EAGAIN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EINTR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  br label %59

74:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %154

75:                                               ; preds = %59
  %76 = load i8*, i8** %7, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %152 [
    i32 130, label %79
    i32 131, label %97
    i32 128, label %116
    i32 129, label %134
  ]

79:                                               ; preds = %75
  %80 = load i8*, i8** %7, align 8
  %81 = bitcast i8* %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %13, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp uge i64 %83, 4
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 4, %91
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %154

96:                                               ; preds = %85, %79
  br label %152

97:                                               ; preds = %75
  %98 = load i8*, i8** %7, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %14, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp uge i64 %101, 4
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16toh(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = add i64 4, %110
  %112 = icmp eq i64 %105, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %5, align 4
  br label %154

115:                                              ; preds = %103, %97
  br label %152

116:                                              ; preds = %75
  %117 = load i8*, i8** %7, align 8
  %118 = bitcast i8* %117 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %15, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp uge i64 %120, 4
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 4, %128
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %154

133:                                              ; preds = %122, %116
  br label %152

134:                                              ; preds = %75
  %135 = load i8*, i8** %7, align 8
  %136 = bitcast i8* %135 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %16, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp uge i64 %138, 4
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 4, %146
  %148 = icmp eq i64 %142, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %5, align 4
  br label %154

151:                                              ; preds = %140, %134
  br label %152

152:                                              ; preds = %75, %151, %133, %115, %96
  %153 = load i64, i64* @EIO, align 8
  store i64 %153, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %149, %131, %113, %94, %74, %52, %48, %22
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
