; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_simple_prompt_next_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_simple_providers.c_simple_prompt_next_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@SVN_AUTH_PARAM_NO_AUTH_CACHE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i8*, i32*, i8*, i32*)* @simple_prompt_next_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @simple_prompt_next_creds(i8** %0, i8* %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %15, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @SVN_AUTH_PARAM_NO_AUTH_CACHE, align 4
  %23 = call i8* @svn_hash_gets(i32* %21, i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i8**, i8*** %8, align 8
  store i8* null, i8** %37, align 8
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %7, align 8
  br label %56

39:                                               ; preds = %28, %6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load i8**, i8*** %8, align 8
  %45 = bitcast i8** %44 to i32**
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %13, align 8
  %55 = call i32* @prompt_for_simple_creds(i32** %45, %struct.TYPE_4__* %46, i32* %47, i8* %48, i32 %49, i32 %53, i32* %54)
  store i32* %55, i32** %7, align 8
  br label %56

56:                                               ; preds = %39, %36
  %57 = load i32*, i32** %7, align 8
  ret i32* %57
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @prompt_for_simple_creds(i32**, %struct.TYPE_4__*, i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
