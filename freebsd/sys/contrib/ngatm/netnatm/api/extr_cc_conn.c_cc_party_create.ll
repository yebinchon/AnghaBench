; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccparty = type { %struct.ccconn*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ccconn = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@PARTY_NULL = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@CCLOG_PARTY_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"created %u.%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccparty* @cc_party_create(%struct.ccconn* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ccparty*, align 8
  %5 = alloca %struct.ccconn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccparty*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.ccparty* @CCZALLOC(i32 32)
  store %struct.ccparty* %9, %struct.ccparty** %8, align 8
  %10 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %11 = icmp eq %struct.ccparty* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.ccparty* null, %struct.ccparty** %4, align 8
  br label %58

13:                                               ; preds = %3
  %14 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %15 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %16 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %15, i32 0, i32 0
  store %struct.ccconn* %14, %struct.ccconn** %16, align 8
  %17 = load i32, i32* @PARTY_NULL, align 4
  %18 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %19 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %21 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_4__* %21 to { i8*, i8* }*
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %22, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @IE_SETPRESENT(i8* %24, i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %30 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %34 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %37 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %36, i32 0, i32 1
  %38 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %39 = load i32, i32* @link, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* %37, %struct.ccparty* %38, i32 %39)
  %41 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %42 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %41, i32 0, i32 0
  %43 = load %struct.ccconn*, %struct.ccconn** %42, align 8
  %44 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CCLOG_PARTY_INST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %13
  %52 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @cc_party_log(%struct.ccparty* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %51, %13
  %57 = load %struct.ccparty*, %struct.ccparty** %8, align 8
  store %struct.ccparty* %57, %struct.ccparty** %4, align 8
  br label %58

58:                                               ; preds = %56, %12
  %59 = load %struct.ccparty*, %struct.ccparty** %4, align 8
  ret %struct.ccparty* %59
}

declare dso_local %struct.ccparty* @CCZALLOC(i32) #1

declare dso_local i32 @IE_SETPRESENT(i8*, i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ccparty*, i32) #1

declare dso_local i32 @cc_party_log(%struct.ccparty*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
