; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/tmpfs/extr_h_tools.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"getfh\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sockets\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"statvfs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %10, i32* %3, align 4
  br label %73

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8** %15, i8*** %5, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getfh_main(i32 %22, i8** %23)
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %11
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @kqueue_main(i32 %32, i8** %33)
  store i32 %34, i32* %6, align 4
  br label %70

35:                                               ; preds = %25
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @rename_main(i32 %42, i8** %43)
  store i32 %44, i32* %6, align 4
  br label %69

45:                                               ; preds = %35
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @sockets_main(i32 %52, i8** %53)
  store i32 %54, i32* %6, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = load i8**, i8*** %5, align 8
  %64 = call i32 @statvfs_main(i32 %62, i8** %63)
  store i32 %64, i32* %6, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %70, %21
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %9
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getfh_main(i32, i8**) #1

declare dso_local i32 @kqueue_main(i32, i8**) #1

declare dso_local i32 @rename_main(i32, i8**) #1

declare dso_local i32 @sockets_main(i32, i8**) #1

declare dso_local i32 @statvfs_main(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
