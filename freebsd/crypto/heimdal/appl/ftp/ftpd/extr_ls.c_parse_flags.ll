; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_parse_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LS_SORT_NAME = common dso_local global i32 0, align 4
@LS_IGNORE_DOT = common dso_local global i32 0, align 4
@LS_DISP_LONG = common dso_local global i32 0, align 4
@LS_DISP_MODE = common dso_local global i32 0, align 4
@LS_SHOW_ALL = common dso_local global i32 0, align 4
@LS_DISP_COLUMN = common dso_local global i32 0, align 4
@LS_DIRS = common dso_local global i32 0, align 4
@LS_SORT_MODE = common dso_local global i32 0, align 4
@LS_TYPE = common dso_local global i32 0, align 4
@LS_INODE = common dso_local global i32 0, align 4
@LS_SORT_REVERSE = common dso_local global i32 0, align 4
@LS_RECURSIVE = common dso_local global i32 0, align 4
@LS_SIZE = common dso_local global i32 0, align 4
@LS_SORT_SIZE = common dso_local global i32 0, align 4
@LS_SORT_MTIME = common dso_local global i32 0, align 4
@LS_DISP_CROSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flags(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @LS_SORT_NAME, align 4
  %7 = load i32, i32* @LS_IGNORE_DOT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @LS_DISP_LONG, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 45
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %116

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %111, %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %114

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %110 [
    i32 49, label %31
    i32 97, label %36
    i32 65, label %40
    i32 67, label %45
    i32 100, label %52
    i32 102, label %56
    i32 70, label %61
    i32 105, label %65
    i32 108, label %69
    i32 114, label %76
    i32 82, label %80
    i32 115, label %84
    i32 83, label %88
    i32 116, label %95
    i32 120, label %102
    i32 107, label %109
    i32 99, label %109
    i32 76, label %109
    i32 109, label %109
    i32 111, label %109
    i32 112, label %109
    i32 113, label %109
    i32 117, label %109
    i32 84, label %109
    i32 87, label %109
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @LS_DISP_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %4, align 4
  br label %110

36:                                               ; preds = %27
  %37 = load i32, i32* @LS_SHOW_ALL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %27, %36
  %41 = load i32, i32* @LS_IGNORE_DOT, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %110

45:                                               ; preds = %27
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @LS_DISP_MODE, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* @LS_DISP_COLUMN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  br label %110

52:                                               ; preds = %27
  %53 = load i32, i32* @LS_DIRS, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %110

56:                                               ; preds = %27
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @LS_SORT_MODE, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  store i32 %60, i32* %4, align 4
  br label %110

61:                                               ; preds = %27
  %62 = load i32, i32* @LS_TYPE, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %110

65:                                               ; preds = %27
  %66 = load i32, i32* @LS_INODE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %27
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @LS_DISP_MODE, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* @LS_DISP_LONG, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %110

76:                                               ; preds = %27
  %77 = load i32, i32* @LS_SORT_REVERSE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %110

80:                                               ; preds = %27
  %81 = load i32, i32* @LS_RECURSIVE, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %110

84:                                               ; preds = %27
  %85 = load i32, i32* @LS_SIZE, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %110

88:                                               ; preds = %27
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @LS_SORT_MODE, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = load i32, i32* @LS_SORT_SIZE, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %4, align 4
  br label %110

95:                                               ; preds = %27
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @LS_SORT_MODE, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load i32, i32* @LS_SORT_MTIME, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %4, align 4
  br label %110

102:                                              ; preds = %27
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @LS_DISP_MODE, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = load i32, i32* @LS_DISP_CROSS, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  br label %110

110:                                              ; preds = %27, %109, %102, %95, %88, %84, %80, %76, %69, %65, %61, %56, %52, %45, %40, %31
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  br label %23

114:                                              ; preds = %23
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
