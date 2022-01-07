; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_log.c_svn_log__unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_log.c_svn_log__unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"unlock (%s)%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" break\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_log__unlock(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.TYPE_4__* @svn_stringbuf_create_empty(i32* %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @apr_hash_first(i32* %15, i32* %16)
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %39, %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = call i8* @apr_hash_this_key(i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @svn_pool_clear(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i8* @svn_path_uri_encode(i8* %35, i32* %36)
  %38 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_4__* %34, i8* %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @apr_hash_next(i32* %40)
  store i32* %41, i32** %7, align 8
  br label %18

42:                                               ; preds = %18
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_pool_destroy(i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i8* @apr_psprintf(i32* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %52)
  ret i8* %53
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_4__*, i8*) #1

declare dso_local i8* @svn_path_uri_encode(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
