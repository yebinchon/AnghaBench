; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_unlock(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @apr_hash_first(i32* %15, i32* %16)
  store i32* %17, i32** %13, align 8
  br label %18

18:                                               ; preds = %27, %6
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32*, i32** %13, align 8
  %23 = call i8* @apr_hash_this_key(i32* %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i32 @svn_relpath_is_canonical(i8* %24)
  %26 = call i32 @SVN_ERR_ASSERT(i32 %25)
  br label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %13, align 8
  %29 = call i32* @apr_hash_next(i32* %28)
  store i32* %29, i32** %13, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32* (%struct.TYPE_6__*, i32*, i32, i32, i8*, i32*)**
  %36 = load i32* (%struct.TYPE_6__*, i32*, i32, i32, i8*, i32*)*, i32* (%struct.TYPE_6__*, i32*, i32, i32, i8*, i32*)** %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32* %36(%struct.TYPE_6__* %37, i32* %38, i32 %39, i32 %40, i8* %41, i32* %42)
  ret i32* %43
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
