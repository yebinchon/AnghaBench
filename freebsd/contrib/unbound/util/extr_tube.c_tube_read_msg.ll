; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_read_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tube.c_tube_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tube = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"tube msg read failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"tube read out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tube_read_msg(%struct.tube* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tube*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tube* %0, %struct.tube** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tube*, %struct.tube** %6, align 8
  %14 = getelementptr inbounds %struct.tube, %struct.tube* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 (i32, ...) @read(i32 %20, i32* %21, i64 4)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EAGAIN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  store i32 -1, i32* %5, align 4
  br label %152

34:                                               ; preds = %29
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %5, align 4
  br label %152

38:                                               ; preds = %19
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %152

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @fd_set_block(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %152

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %78, %49
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 4
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 4, %62
  %64 = call i32 (i32, ...) @read(i32 %55, i8* %60, i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i64, i64* @errno, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @fd_set_nonblock(i32 %70)
  store i32 0, i32* %5, align 4
  br label %152

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @fd_set_nonblock(i32 %76)
  store i32 0, i32* %5, align 4
  br label %152

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 131072
  %86 = zext i1 %85 to i32
  %87 = call i32 @log_assert(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @malloc(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8**, i8*** %7, align 8
  store i8* %91, i8** %92, align 8
  %93 = load i8**, i8*** %7, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %82
  %97 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @fd_set_nonblock(i32 %98)
  store i32 0, i32* %5, align 4
  br label %152

100:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %139, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = load i8**, i8*** %7, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = call i32 (i32, ...) @read(i32 %107, i8* %112, i64 %118)
  store i32 %119, i32* %10, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %130

121:                                              ; preds = %106
  %122 = load i64, i64* @errno, align 8
  %123 = call i32 @strerror(i64 %122)
  %124 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @fd_set_nonblock(i32 %125)
  %127 = load i8**, i8*** %7, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @free(i8* %128)
  store i32 0, i32* %5, align 4
  br label %152

130:                                              ; preds = %106
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @fd_set_nonblock(i32 %134)
  %136 = load i8**, i8*** %7, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  store i32 0, i32* %5, align 4
  br label %152

139:                                              ; preds = %130
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %101

143:                                              ; preds = %101
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @fd_set_nonblock(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i8**, i8*** %7, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @free(i8* %149)
  store i32 0, i32* %5, align 4
  br label %152

151:                                              ; preds = %143
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %147, %133, %121, %96, %75, %66, %48, %41, %34, %33
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @fd_set_block(i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
