; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__ui64toa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_string.c_svn__ui64toa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@decimal_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn__ui64toa(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 48, %21
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %23, i8* %25, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %151

28:                                               ; preds = %17
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** @decimal_table, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @COPY_TWO_BYTES(i8* %29, i32 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 0, i8* %37, align 1
  store i32 2, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %151

38:                                               ; preds = %2
  %39 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %14, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %44 = sub nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %14, i64 %45
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %50, %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 100000000
  br i1 %49, label %50, label %99

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = srem i32 %51, 100000000
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 100000000
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i32*, i32** @decimal_table, align 8
  %58 = load i32, i32* %8, align 4
  %59 = srem i32 %58, 100
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @COPY_TWO_BYTES(i8* %56, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, 100
  store i32 %65, i32* %8, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -2
  %68 = load i32*, i32** @decimal_table, align 8
  %69 = load i32, i32* %8, align 4
  %70 = srem i32 %69, 100
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @COPY_TWO_BYTES(i8* %67, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = sdiv i32 %75, 100
  store i32 %76, i32* %8, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 -4
  %79 = load i32*, i32** @decimal_table, align 8
  %80 = load i32, i32* %8, align 4
  %81 = srem i32 %80, 100
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @COPY_TWO_BYTES(i8* %78, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %86, 100
  store i32 %87, i32* %8, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -6
  %90 = load i32*, i32** @decimal_table, align 8
  %91 = load i32, i32* %8, align 4
  %92 = srem i32 %91, 100
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @COPY_TWO_BYTES(i8* %89, i32 %95)
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -8
  store i8* %98, i8** %9, align 8
  br label %47

99:                                               ; preds = %47
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %104, %99
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 100
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = load i32*, i32** @decimal_table, align 8
  %107 = load i32, i32* %8, align 4
  %108 = srem i32 %107, 100
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @COPY_TWO_BYTES(i8* %105, i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %113, 100
  store i32 %114, i32* %8, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -2
  store i8* %116, i8** %9, align 8
  br label %101

117:                                              ; preds = %101
  %118 = load i8*, i8** %9, align 8
  %119 = load i32*, i32** @decimal_table, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @COPY_TWO_BYTES(i8* %118, i32 %123)
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 10
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %9, align 8
  br label %130

130:                                              ; preds = %127, %117
  %131 = load i8*, i8** %4, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %14, i64 %134
  %136 = load i8*, i8** %9, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memcpy(i8* %131, i8* %132, i32 %140)
  %142 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %14, i64 %143
  %145 = load i8*, i8** %9, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sub nsw i64 %148, 1
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %130, %28, %20
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COPY_TWO_BYTES(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
