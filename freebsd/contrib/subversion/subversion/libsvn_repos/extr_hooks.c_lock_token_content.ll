; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_lock_token_content.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_lock_token_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"LOCK-TOKENS:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s|%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*)* @lock_token_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lock_token_content(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @svn_stringbuf_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @apr_hash_first(i32* %13, i32* %14)
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %38, %3
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = call i8* @apr_hash_this_key(i32* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @apr_hash_this_val(i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, inttoptr (i64 1 to i8*)
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @svn_path_uri_autoescape(i8* %28, i32* %29)
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @svn_stringbuf_createf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %35)
  %37 = call i32 @svn_stringbuf_appendstr(i32* %32, i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @apr_hash_next(i32* %39)
  store i32* %40, i32** %8, align 8
  br label %16

41:                                               ; preds = %16
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_stringbuf_appendcstr(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32**, i32*** %4, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @svn_stringbuf__morph_into_string(i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @create_temp_file(i32** %44, i32 %46, i32* %47)
  ret i32* %48
}

declare dso_local i32* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_path_uri_autoescape(i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_appendstr(i32*, i32) #1

declare dso_local i32 @svn_stringbuf_createf(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i32* @create_temp_file(i32**, i32, i32*) #1

declare dso_local i32 @svn_stringbuf__morph_into_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
