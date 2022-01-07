; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_shelf_name_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_shelf_name_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%02x%n\00", align 1
@SVN_ERR_BAD_CHANGELIST_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Shelve: Bad encoded name '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*)* @shelf_name_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @shelf_name_decode(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = sdiv i32 %14, 2
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32 %15, i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %36, %3
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @SVN_ERR_BAD_CHANGELIST_NAME, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %6, align 8
  %35 = call i32* @svn_error_createf(i32 %32, i32* null, i32 %33, i8* %34)
  store i32* %35, i32** %4, align 8
  br label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__* %37, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %9, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %5, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
