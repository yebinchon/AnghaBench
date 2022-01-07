; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_init_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32, i8*, i8*, i64, i32, i32*, i32*, i64, i64, i64 }

@id_count = common dso_local global i32 0, align 4
@CMD_NONE = common dso_local global i32 0, align 4
@sessions = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@session_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.session* @init_session() #0 {
  %1 = alloca %struct.session*, align 8
  %2 = alloca %struct.session*, align 8
  %3 = call %struct.session* @calloc(i32 1, i32 80)
  store %struct.session* %3, %struct.session** %2, align 8
  %4 = load %struct.session*, %struct.session** %2, align 8
  %5 = icmp eq %struct.session* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.session* null, %struct.session** %1, align 8
  br label %44

7:                                                ; preds = %0
  %8 = load i32, i32* @id_count, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @id_count, align 4
  %10 = sext i32 %8 to i64
  %11 = load %struct.session*, %struct.session** %2, align 8
  %12 = getelementptr inbounds %struct.session, %struct.session* %11, i32 0, i32 10
  store i64 %10, i64* %12, align 8
  %13 = load %struct.session*, %struct.session** %2, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.session*, %struct.session** %2, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load %struct.session*, %struct.session** %2, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load %struct.session*, %struct.session** %2, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.session*, %struct.session** %2, align 8
  %24 = getelementptr inbounds %struct.session, %struct.session* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %26, align 1
  %27 = load %struct.session*, %struct.session** %2, align 8
  %28 = getelementptr inbounds %struct.session, %struct.session* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.session*, %struct.session** %2, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.session*, %struct.session** %2, align 8
  %32 = getelementptr inbounds %struct.session, %struct.session* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @CMD_NONE, align 4
  %34 = load %struct.session*, %struct.session** %2, align 8
  %35 = getelementptr inbounds %struct.session, %struct.session* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.session*, %struct.session** %2, align 8
  %37 = getelementptr inbounds %struct.session, %struct.session* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.session*, %struct.session** %2, align 8
  %39 = load i32, i32* @entry, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* @sessions, %struct.session* %38, i32 %39)
  %41 = load i32, i32* @session_count, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @session_count, align 4
  %43 = load %struct.session*, %struct.session** %2, align 8
  store %struct.session* %43, %struct.session** %1, align 8
  br label %44

44:                                               ; preds = %7, %6
  %45 = load %struct.session*, %struct.session** %1, align 8
  ret %struct.session* %45
}

declare dso_local %struct.session* @calloc(i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
