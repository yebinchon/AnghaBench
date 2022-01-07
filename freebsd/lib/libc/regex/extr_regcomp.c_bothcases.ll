; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_bothcases.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_bothcases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i8* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32)* @bothcases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bothcases(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.parse*, %struct.parse** %3, align 8
  %12 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.parse*, %struct.parse** %3, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* @MB_LEN_MAX, align 4
  %18 = add nsw i32 3, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @othercase(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.parse*, %struct.parse** %3, align 8
  %29 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 0
  store i8* %21, i8** %29, align 8
  %30 = call i32 @memset(i32* %10, i32 0, i32 4)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @wcrtomb(i8* %21, i32 %31, i32* %10)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %21, i64 %37
  store i8 93, i8* %38, align 1
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %21, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i8, i8* %21, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load %struct.parse*, %struct.parse** %3, align 8
  %46 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.parse*, %struct.parse** %3, align 8
  %48 = call i32 @p_bracket(%struct.parse* %47)
  %49 = load %struct.parse*, %struct.parse** %3, align 8
  %50 = getelementptr inbounds %struct.parse, %struct.parse* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.parse*, %struct.parse** %3, align 8
  %53 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.parse*, %struct.parse** %3, align 8
  %60 = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.parse*, %struct.parse** %3, align 8
  %63 = getelementptr inbounds %struct.parse, %struct.parse* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @othercase(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @wcrtomb(i8*, i32, i32*) #2

declare dso_local i32 @p_bracket(%struct.parse*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
