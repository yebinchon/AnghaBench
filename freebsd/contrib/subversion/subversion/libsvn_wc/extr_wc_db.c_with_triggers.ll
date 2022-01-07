; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_with_triggers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_with_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.with_triggers_baton_t = type { i32, i32, i32* (i32, %struct.TYPE_4__*, i8*, i32*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i8*, i32*)* @with_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @with_triggers(i8* %0, %struct.TYPE_4__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.with_triggers_baton_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.with_triggers_baton_t*
  store %struct.with_triggers_baton_t* %13, %struct.with_triggers_baton_t** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.with_triggers_baton_t*, %struct.with_triggers_baton_t** %9, align 8
  %18 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @svn_sqlite__exec_statements(i32 %16, i32 %19)
  %21 = call i32 @SVN_ERR(i32* %20)
  %22 = load %struct.with_triggers_baton_t*, %struct.with_triggers_baton_t** %9, align 8
  %23 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %22, i32 0, i32 2
  %24 = load i32* (i32, %struct.TYPE_4__*, i8*, i32*)*, i32* (i32, %struct.TYPE_4__*, i8*, i32*)** %23, align 8
  %25 = load %struct.with_triggers_baton_t*, %struct.with_triggers_baton_t** %9, align 8
  %26 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* %24(i32 %27, %struct.TYPE_4__* %28, i8* %29, i32* %30)
  store i32* %31, i32** %10, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.with_triggers_baton_t*, %struct.with_triggers_baton_t** %9, align 8
  %36 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @svn_sqlite__exec_statements(i32 %34, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_error_compose_create(i32* %39, i32* %40)
  %42 = call i32* @svn_error_trace(i32 %41)
  ret i32* %42
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
