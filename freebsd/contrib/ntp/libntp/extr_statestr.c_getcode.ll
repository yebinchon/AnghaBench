; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_statestr.c_getcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_statestr.c_getcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codestring = type { i32, i8* }

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.codestring*)* @getcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getcode(i32 %0, %struct.codestring* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.codestring*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.codestring* %1, %struct.codestring** %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load %struct.codestring*, %struct.codestring** %5, align 8
  %9 = getelementptr inbounds %struct.codestring, %struct.codestring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.codestring*, %struct.codestring** %5, align 8
  %14 = getelementptr inbounds %struct.codestring, %struct.codestring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.codestring*, %struct.codestring** %5, align 8
  %20 = getelementptr inbounds %struct.codestring, %struct.codestring* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %36

22:                                               ; preds = %12
  %23 = load %struct.codestring*, %struct.codestring** %5, align 8
  %24 = getelementptr inbounds %struct.codestring, %struct.codestring* %23, i32 1
  store %struct.codestring* %24, %struct.codestring** %5, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @LIB_GETBUF(i8* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @LIB_BUFLENGTH, align 4
  %30 = load %struct.codestring*, %struct.codestring** %5, align 8
  %31 = getelementptr inbounds %struct.codestring, %struct.codestring* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %25, %18
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
