; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_mode_to_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_mode_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILEIO_S_IFREG = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@FILEIO_S_IFDIR = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@FILEIO_S_IFCHR = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i32 0, align 4
@FILEIO_S_IRUSR = common dso_local global i64 0, align 8
@S_IRUSR = common dso_local global i32 0, align 4
@FILEIO_S_IWUSR = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@FILEIO_S_IXUSR = common dso_local global i64 0, align 8
@S_IXUSR = common dso_local global i32 0, align 4
@FILEIO_S_IRGRP = common dso_local global i64 0, align 8
@S_IRGRP = common dso_local global i32 0, align 4
@FILEIO_S_IWGRP = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i32 0, align 4
@FILEIO_S_IXGRP = common dso_local global i64 0, align 8
@S_IXGRP = common dso_local global i32 0, align 4
@FILEIO_S_IROTH = common dso_local global i64 0, align 8
@S_IROTH = common dso_local global i32 0, align 4
@FILEIO_S_IWOTH = common dso_local global i64 0, align 8
@S_IWOTH = common dso_local global i32 0, align 4
@FILEIO_S_IXOTH = common dso_local global i64 0, align 8
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @remote_fileio_mode_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_fileio_mode_to_host(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @FILEIO_S_IFREG, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @S_IFREG, align 4
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @FILEIO_S_IFDIR, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @FILEIO_S_IFCHR, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @S_IFCHR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @FILEIO_S_IRUSR, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @S_IRUSR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @FILEIO_S_IWUSR, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @S_IWUSR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @FILEIO_S_IXUSR, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @S_IXUSR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @FILEIO_S_IRGRP, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @S_IRGRP, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @FILEIO_S_IWGRP, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @S_IWGRP, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @FILEIO_S_IXGRP, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @S_IXGRP, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @FILEIO_S_IROTH, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @S_IROTH, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @FILEIO_S_IWOTH, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @S_IWOTH, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @FILEIO_S_IXOTH, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @S_IXOTH, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
