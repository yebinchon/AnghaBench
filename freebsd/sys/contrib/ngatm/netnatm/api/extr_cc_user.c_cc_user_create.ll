; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i8*, %struct.ccdata*, i32, i8*, i32 }
%struct.ccdata = type { i32, i32 }

@USER_NULL = common dso_local global i32 0, align 4
@node_link = common dso_local global i32 0, align 4
@CCLOG_USER_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"created with name '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccuser* @cc_user_create(%struct.ccdata* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ccuser*, align 8
  %5 = alloca %struct.ccdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccuser*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.ccuser* @CCZALLOC(i32 40)
  store %struct.ccuser* %9, %struct.ccuser** %8, align 8
  %10 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %11 = icmp eq %struct.ccuser* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.ccuser* null, %struct.ccuser** %4, align 8
  br label %54

13:                                               ; preds = %3
  %14 = load %struct.ccdata*, %struct.ccdata** %5, align 8
  %15 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %16 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %15, i32 0, i32 1
  store %struct.ccdata* %14, %struct.ccdata** %16, align 8
  %17 = load i32, i32* @USER_NULL, align 4
  %18 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %19 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %22 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %24 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strncpy(i8* %25, i8* %26, i32 8)
  %28 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %29 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 7
  store i8 0, i8* %31, align 1
  %32 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %33 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %32, i32 0, i32 2
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.ccdata*, %struct.ccdata** %5, align 8
  %36 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %35, i32 0, i32 1
  %37 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %38 = load i32, i32* @node_link, align 4
  %39 = call i32 @LIST_INSERT_HEAD(i32* %36, %struct.ccuser* %37, i32 %38)
  %40 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %41 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %40, i32 0, i32 1
  %42 = load %struct.ccdata*, %struct.ccdata** %41, align 8
  %43 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CCLOG_USER_INST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %13
  %49 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @cc_user_log(%struct.ccuser* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %13
  %53 = load %struct.ccuser*, %struct.ccuser** %8, align 8
  store %struct.ccuser* %53, %struct.ccuser** %4, align 8
  br label %54

54:                                               ; preds = %52, %12
  %55 = load %struct.ccuser*, %struct.ccuser** %4, align 8
  ret %struct.ccuser* %55
}

declare dso_local %struct.ccuser* @CCZALLOC(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ccuser*, i32) #1

declare dso_local i32 @cc_user_log(%struct.ccuser*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
