; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_bothcases.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_bothcases.c"
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
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @othercase(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load %struct.parse*, %struct.parse** %3, align 8
  %27 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 93, i8* %31, align 1
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %32, align 1
  %33 = load %struct.parse*, %struct.parse** %3, align 8
  %34 = call i32 @p_bracket(%struct.parse* %33)
  %35 = load %struct.parse*, %struct.parse** %3, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = icmp eq i8* %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.parse*, %struct.parse** %3, align 8
  %45 = getelementptr inbounds %struct.parse, %struct.parse* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.parse*, %struct.parse** %3, align 8
  %48 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
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
