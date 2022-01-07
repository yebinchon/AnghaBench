; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_normalize_key_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_normalize_key_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @normalize_key_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normalize_key_part(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_5__* @svn_stringbuf_create_ensure(i64 %11, i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %8, align 1
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %31 [
    i32 58, label %25
    i32 37, label %28
  ]

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %35

28:                                               ; preds = %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = load i8, i8* %8, align 1
  %34 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__* %32, i8 signext %33)
  br label %35

35:                                               ; preds = %31, %28, %25
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %14

39:                                               ; preds = %14
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  ret i8* %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
