; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_get_av_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_get_av_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.srvr_str = type { i32, i8* }

@MAXAVPAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tac_get_av_value(%struct.tac_handle* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tac_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.srvr_str, align 8
  store %struct.tac_handle* %0, %struct.tac_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i8* null, i8** %3, align 8
  br label %128

21:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %124, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAXAVPAIRS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %22
  %27 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %28 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %36 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  br label %127

46:                                               ; preds = %26
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %123

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @strncmp(i8* %51, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %123, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8* %64, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %104, %56
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 61
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 42
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 9
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75, %70, %65
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %86, %87
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi i1 [ false, %80 ], [ %88, %85 ]
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 61
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 42
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  br label %65

107:                                              ; preds = %89
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.srvr_str, %struct.srvr_str* %13, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds %struct.srvr_str, %struct.srvr_str* %13, i32 0, i32 1
  store i8* %118, i8** %119, align 8
  %120 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %121 = call i8* @dup_str(%struct.tac_handle* %120, %struct.srvr_str* %13, i32* null)
  store i8* %121, i8** %3, align 8
  br label %128

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %50, %46
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %22

127:                                              ; preds = %45, %22
  store i8* null, i8** %3, align 8
  br label %128

128:                                              ; preds = %127, %110, %20
  %129 = load i8*, i8** %3, align 8
  ret i8* %129
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @dup_str(%struct.tac_handle*, %struct.srvr_str*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
