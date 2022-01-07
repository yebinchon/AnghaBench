; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_bothcases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_bothcases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32)* @bothcases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bothcases(%struct.parse* %0, i32 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8], align 1
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.parse*, %struct.parse** %3, align 8
  %9 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.parse*, %struct.parse** %3, align 8
  %12 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @othercase(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %21 = load %struct.parse*, %struct.parse** %3, align 8
  %22 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load %struct.parse*, %struct.parse** %3, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 93, i8* %30, align 1
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %31, align 1
  %32 = load %struct.parse*, %struct.parse** %3, align 8
  %33 = call i32 @p_bracket(%struct.parse* %32)
  %34 = load %struct.parse*, %struct.parse** %3, align 8
  %35 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = icmp eq i8* %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.parse*, %struct.parse** %3, align 8
  %44 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.parse*, %struct.parse** %3, align 8
  %47 = getelementptr inbounds %struct.parse, %struct.parse* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @othercase(i32) #1

declare dso_local i32 @p_bracket(%struct.parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
