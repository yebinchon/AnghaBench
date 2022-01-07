; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mtree/extr_mtree.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mtree/extr_mtree.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [194 x i8] c"usage: %s [-bCcDdejLlMnPqrStUuWx] [-i|-m] [-E tags]\0A\09\09[-f spec] [-f spec]\0A\09\09[-I tags] [-K keywords] [-k keywords] [-N dbdir] [-p path]\0A\09\09[-R keywords] [-s seed] [-X exclude-file]\0A\09\09[-F flavor]\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0Aflavors:\00", align 1
@flavors = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = call i8* (...) @getprogname()
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %21, %0
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavors, align 8
  %10 = call i32 @__arraycount(%struct.TYPE_3__* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavors, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @__arraycount(%struct.TYPE_3__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
