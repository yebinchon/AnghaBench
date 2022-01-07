; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.stat = type { i32, i64 }

@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@MAX_KEY_FILE_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@SSH_ERR_FILE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_load_file(i32 %0, %struct.sshbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca [1024 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @fstat(i32 %10, %struct.stat* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @S_IFSOCK, align 4
  %19 = load i32, i32* @S_IFCHR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IFIFO, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_KEY_FILE_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %31, i32* %3, align 4
  br label %90

32:                                               ; preds = %25, %15
  br label %33

33:                                               ; preds = %60, %32
  %34 = load i32, i32* @read, align 4
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %37 = call i64 @atomicio(i32 %34, i32 %35, i32* %36, i32 4096)
  store i64 %37, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EPIPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %61

44:                                               ; preds = %39
  %45 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %45, i32* %9, align 4
  br label %80

46:                                               ; preds = %33
  %47 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @sshbuf_put(%struct.sshbuf* %47, i32* %48, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %80

53:                                               ; preds = %46
  %54 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %55 = call i64 @sshbuf_len(%struct.sshbuf* %54)
  %56 = load i64, i64* @MAX_KEY_FILE_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %59, i32* %9, align 4
  br label %80

60:                                               ; preds = %53
  br label %33

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @S_IFSOCK, align 4
  %65 = load i32, i32* @S_IFCHR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IFIFO, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %75 = call i64 @sshbuf_len(%struct.sshbuf* %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @SSH_ERR_FILE_CHANGED, align 4
  store i32 %78, i32* %9, align 4
  br label %80

79:                                               ; preds = %71, %61
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %77, %58, %52, %44
  %81 = getelementptr inbounds [1024 x i32], [1024 x i32]* %6, i64 0, i64 0
  %82 = call i32 @explicit_bzero(i32* %81, i32 4096)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %87 = call i32 @sshbuf_reset(%struct.sshbuf* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %30, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @atomicio(i32, i32, i32*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i64) #1

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
