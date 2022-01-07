; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_cmd_unjail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_cmd_unjail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bectl %s: wrong number of arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"bectl %s: failed to locate BE by '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"bectl %s: failed to get path for jail requested by '%s'\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"bectl %s: jail requested by '%s' not a BE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bectl_cmd_unjail(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @usage(i32 0)
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @bectl_locate_jail(i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

39:                                               ; preds = %27
  %40 = bitcast i8* %16 to i8**
  %41 = load i32, i32* @MAXPATHLEN, align 4
  %42 = call i32 @bzero(i8** %40, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i8* @jail_getname(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @jail_getv(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %16, i32* null)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %53, i8* %54)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

56:                                               ; preds = %39
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* @be, align 4
  %60 = call i64 @be_mounted_at(i32 %59, i8* %16, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %64, i8* %65)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

67:                                               ; preds = %56
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @bectl_jail_cleanup(i8* %16, i32 %68)
  %70 = load i32, i32* @be, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @be_unmount(i32 %70, i8* %71, i32 0)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %67, %62, %49, %34, %22
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @bectl_locate_jail(i8*) #2

declare dso_local i32 @bzero(i8**, i32) #2

declare dso_local i8* @jail_getname(i32) #2

declare dso_local i32 @jail_getv(i32, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @be_mounted_at(i32, i8*, i32*) #2

declare dso_local i32 @bectl_jail_cleanup(i8*, i32) #2

declare dso_local i32 @be_unmount(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
