; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"fdr\00", align 1
@debug = common dso_local global i32 0, align 4
@nflag = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot set up file system `%s'\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s file system `%s'\0ALast Mounted on %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Examining\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Editing\00", align 1
@sblock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"*** FILE SYSTEM MARKED DIRTY\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"*** BE SURE TO RUN FSCK TO CLEAN UP ANY DAMAGE\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"*** IF IT WAS MOUNTED, RE-MOUNT WITH -u -o reload\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 -1, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %23 [
    i32 102, label %16
    i32 100, label %17
    i32 114, label %20
  ]

16:                                               ; preds = %14
  br label %25

17:                                               ; preds = %14
  %18 = load i32, i32* @debug, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @debug, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load i64, i64* @nflag, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @nflag, align 8
  br label %25

23:                                               ; preds = %14
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %20, %17, %16
  br label %9

26:                                               ; preds = %9
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i32 (...) @usage()
  br label %43

39:                                               ; preds = %26
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = call i32 (...) @sblock_init()
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @setup(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i64, i64* @nflag, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56, i8* %57)
  %59 = call i32 (...) @cmdloop()
  store i32 %59, i32* %7, align 4
  %60 = load i64, i64* @nflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %51
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 1), align 8
  %63 = call i32 (...) @sbdirty()
  %64 = call i32 @ckfini(i32 0)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %51
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @exit(i32 %69) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sblock_init(...) #1

declare dso_local i32 @setup(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cmdloop(...) #1

declare dso_local i32 @sbdirty(...) #1

declare dso_local i32 @ckfini(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
