; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_hash_stash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_hash_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @hash_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hash_stash(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @apr_hash_pool_get(i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i8* @svn_wc_dup_status3(i32* %18, i32* %19)
  store i8* %20, i8** %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %13, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @svn_hash_gets(i32* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @apr_pstrdup(i32* %44, i8* %45)
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @svn_hash_sets(i32* %43, i32 %46, i8* %47)
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i8* @svn_wc_dup_status3(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
