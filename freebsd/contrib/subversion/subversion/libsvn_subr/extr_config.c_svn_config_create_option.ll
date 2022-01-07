; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_create_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_create_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8*, i8*, i8* }

@option_state_needs_expanding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, i8*, i8*, i64, i32*)* @svn_config_create_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svn_config_create_option(%struct.TYPE_4__** %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call %struct.TYPE_4__* @apr_palloc(i32* %12, i32 40)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %11, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @apr_pstrdup(i32* %14, i8* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %34

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @apr_pstrdup(i32* %28, i8* %29)
  %31 = call i8* @make_hash_key(i8* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @apr_pstrdup(i32* %35, i8* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @option_state_needs_expanding, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %46, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @make_hash_key(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
