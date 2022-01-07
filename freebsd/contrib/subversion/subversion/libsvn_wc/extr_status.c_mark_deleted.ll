; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_mark_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_mark_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.status_baton = type { i32, i32* (i32, i8*, %struct.TYPE_6__*, i32*)* }

@svn_wc_status_deleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_6__*, i32*)* @mark_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_deleted(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.status_baton*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.status_baton*
  store %struct.status_baton* %12, %struct.status_baton** %9, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_6__* @svn_wc_dup_status3(%struct.TYPE_6__* %13, i32* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i32, i32* @svn_wc_status_deleted, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.status_baton*, %struct.status_baton** %9, align 8
  %20 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %19, i32 0, i32 1
  %21 = load i32* (i32, i8*, %struct.TYPE_6__*, i32*)*, i32* (i32, i8*, %struct.TYPE_6__*, i32*)** %20, align 8
  %22 = load %struct.status_baton*, %struct.status_baton** %9, align 8
  %23 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* %21(i32 %24, i8* %25, %struct.TYPE_6__* %26, i32* %27)
  ret i32* %28
}

declare dso_local %struct.TYPE_6__* @svn_wc_dup_status3(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
