; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fmemopen.c_fmemopen_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fmemopen.c_fmemopen_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmemopen_cookie = type { i32, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @fmemopen_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmemopen_write(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fmemopen_cookie*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fmemopen_cookie*
  store %struct.fmemopen_cookie* %10, %struct.fmemopen_cookie** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %13 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %16 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp sgt i32 %11, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %22 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %25 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %20, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %99

32:                                               ; preds = %28
  %33 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %34 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %37 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %46 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %50 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %53 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %32
  %57 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %58 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %61 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %32
  %63 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %64 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %62
  %68 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %69 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %72 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %77 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %80 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %78, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %75
  %89 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %90 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %93 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %88, %75, %67, %62
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %31
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
