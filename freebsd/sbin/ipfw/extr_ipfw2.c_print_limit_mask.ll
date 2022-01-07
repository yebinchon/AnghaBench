; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_limit_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_limit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._s_x = type { i32, i32 }
%struct.buf_pr = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@limit_masks = common dso_local global %struct._s_x* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.TYPE_3__*)* @print_limit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_limit_mask(%struct.buf_pr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.buf_pr*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct._s_x*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct._s_x*, %struct._s_x** @limit_masks, align 8
  store %struct._s_x* %8, %struct._s_x** %5, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load %struct._s_x*, %struct._s_x** %5, align 8
  %14 = getelementptr inbounds %struct._s_x, %struct._s_x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = load %struct._s_x*, %struct._s_x** %5, align 8
  %20 = getelementptr inbounds %struct._s_x, %struct._s_x* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct._s_x*, %struct._s_x** %5, align 8
  %24 = getelementptr inbounds %struct._s_x, %struct._s_x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = load %struct._s_x*, %struct._s_x** %5, align 8
  %29 = getelementptr inbounds %struct._s_x, %struct._s_x* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct._s_x*, %struct._s_x** %5, align 8
  %37 = getelementptr inbounds %struct._s_x, %struct._s_x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bprintf(%struct.buf_pr* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %40

40:                                               ; preds = %27, %17
  br label %41

41:                                               ; preds = %40
  %42 = load %struct._s_x*, %struct._s_x** %5, align 8
  %43 = getelementptr inbounds %struct._s_x, %struct._s_x* %42, i32 1
  store %struct._s_x* %43, %struct._s_x** %5, align 8
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.buf_pr*, %struct.buf_pr** %3, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bprint_uint_arg(%struct.buf_pr* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, i8*, i32) #1

declare dso_local i32 @bprint_uint_arg(%struct.buf_pr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
