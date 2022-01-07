; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_addarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_addarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_val = type { i32, i32, i32** }

@net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"realloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"strdup: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arg_val*, i8*)* @addarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addarg(%struct.arg_val* %0, i8* %1) #0 {
  %3 = alloca %struct.arg_val*, align 8
  %4 = alloca i8*, align 8
  store %struct.arg_val* %0, %struct.arg_val** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %6 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %9 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %15 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %18 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 10
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32** @realloc(i32** %16, i32 %23)
  %25 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %26 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %25, i32 0, i32 2
  store i32** %24, i32*** %26, align 8
  %27 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %28 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = icmp eq i32** %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = load i32, i32* @net, align 4
  %33 = call i32 @fatal(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %13
  %35 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %36 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 10
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i8*, i8** %4, align 8
  %41 = call i32* @strdup(i8* %40)
  %42 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %43 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %46 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32*, i32** %44, i64 %49
  store i32* %41, i32** %50, align 8
  %51 = icmp eq i32* %41, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @net, align 4
  %54 = call i32 @fatal(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %57 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load %struct.arg_val*, %struct.arg_val** %3, align 8
  %60 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %58, i64 %62
  store i32* null, i32** %63, align 8
  ret void
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
