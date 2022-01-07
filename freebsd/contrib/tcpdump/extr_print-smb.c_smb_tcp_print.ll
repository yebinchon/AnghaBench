; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_smb_tcp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_smb_tcp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\FFSMB\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c" WARNING: Packet is continued in later TCP segments\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c" WARNING: Short packet. Try increasing the snap length by %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c" SMB-over-TCP packet:(raw data or continuation?)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_tcp_print(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %103

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ult i32* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %103

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %103

33:                                               ; preds = %20
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32 @EXTRACT_24BITS(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** @startbuf, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 4
  br i1 %49, label %50, label %99

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @memcmp(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([53 x i8]* @.str.1 to %struct.TYPE_5__*))
  br label %76

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_5__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %68, %65
  br label %80

77:                                               ; preds = %57
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_5__*))
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = icmp ugt i32* %83, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  br label %96

94:                                               ; preds = %80
  %95 = load i32*, i32** %9, align 8
  br label %96

96:                                               ; preds = %94, %89
  %97 = phi i32* [ %93, %89 ], [ %95, %94 ]
  %98 = call i32 @print_smb(%struct.TYPE_5__* %81, i32* %82, i32* %97)
  br label %102

99:                                               ; preds = %53, %50, %33
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([50 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %102

102:                                              ; preds = %99, %96
  br label %109

103:                                              ; preds = %32, %19, %12
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = load i32, i32* @tstr, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to %struct.TYPE_5__*
  %108 = call i32 @ND_PRINT(%struct.TYPE_5__* %107)
  br label %109

109:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @EXTRACT_24BITS(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @print_smb(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
