; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i64*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.val_env = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"error setting option\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"val-override-date:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"validator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_option(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.val_env*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @find_arg2(i32* %10, i8* %11, i8** %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.worker*, %struct.worker** %5, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @config_set_option(%struct.TYPE_6__* %19, i8* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ssl_printf(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

27:                                               ; preds = %15
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load %struct.worker*, %struct.worker** %5, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @modstack_find(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  store %struct.val_env* null, %struct.val_env** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.worker*, %struct.worker** %5, align 8
  %42 = getelementptr inbounds %struct.worker, %struct.worker* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.val_env*
  store %struct.val_env* %49, %struct.val_env** %9, align 8
  br label %50

50:                                               ; preds = %40, %31
  %51 = load %struct.val_env*, %struct.val_env** %9, align 8
  %52 = icmp ne %struct.val_env* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.worker*, %struct.worker** %5, align 8
  %55 = getelementptr inbounds %struct.worker, %struct.worker* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.val_env*, %struct.val_env** %9, align 8
  %61 = getelementptr inbounds %struct.val_env, %struct.val_env* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @send_ok(i32* %64)
  br label %66

66:                                               ; preds = %63, %24, %14
  ret void
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local i32 @config_set_option(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @ssl_printf(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @modstack_find(i32*, i8*) #1

declare dso_local i32 @send_ok(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
