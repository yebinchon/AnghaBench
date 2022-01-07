; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_new_curlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_new_curlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@AUDIT_CURRENT_LINK = common dso_local global i32 0, align 4
@NOT_TERMINATED = common dso_local global i32 0, align 4
@CRASH_RECOVERY = common dso_local global i32 0, align 4
@POSTFIX_LEN = common dso_local global i32 0, align 4
@ADE_RENAME = common dso_local global i32 0, align 4
@ADE_STRERR = common dso_local global i32 0, align 4
@AUE_audit_recovery = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ADE_READLINK = common dso_local global i32 0, align 4
@ADE_SYMLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_new_curlink(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i32, i32* @AUDIT_CURRENT_LINK, align 4
  %21 = sub i64 %14, 1
  %22 = trunc i64 %21 to i32
  %23 = call i32 @readlink(i32 %20, i8* %16, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %16, i64 %29
  store i8 0, i8* %30, align 1
  %31 = call i64 @stat(i8* %16, %struct.stat* %8)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = trunc i64 %18 to i32
  %35 = call i32 @strlcpy(i8* %19, i8* %16, i32 %34)
  %36 = load i32, i32* @NOT_TERMINATED, align 4
  %37 = call i8* @strstr(i8* %19, i32 %36)
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @CRASH_RECOVERY, align 4
  %42 = load i32, i32* @POSTFIX_LEN, align 4
  %43 = call i32 @memcpy(i8* %40, i32 %41, i32 %42)
  %44 = call i64 @auditd_rename(i8* %16, i8* %19)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @ADE_RENAME, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %33
  %50 = load i32, i32* @ADE_STRERR, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

51:                                               ; preds = %48
  store i8* %19, i8** %7, align 8
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32, i32* @AUDIT_CURRENT_LINK, align 4
  %54 = call i32 @unlink(i32 %53)
  %55 = load i32, i32* @AUE_audit_recovery, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @auditd_gen_record(i32 %55, i8* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %1
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ENOENT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ADE_READLINK, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

72:                                               ; preds = %66, %63
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* @AUDIT_CURRENT_LINK, align 4
  %75 = call i64 @symlink(i8* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @ADE_SYMLINK, align 4
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

79:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %77, %70, %60, %49, %46
  %81 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readlink(i32, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strstr(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i64 @auditd_rename(i8*, i8*) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32 @auditd_gen_record(i32, i8*) #2

declare dso_local i64 @symlink(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
