; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_echo/extr_pam_echo.c__pam_echo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_echo/extr_pam_echo.c__pam_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@PAM_SILENT = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_RHOST = common dso_local global i32 0, align 4
@PAM_SERVICE = common dso_local global i32 0, align 4
@PAM_TTY = common dso_local global i32 0, align 4
@PAM_RUSER = common dso_local global i32 0, align 4
@PAM_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8**)* @_pam_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_pam_echo(i32* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %20 = load i32, i32* @PAM_MAX_MSG_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PAM_SILENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %156

30:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %18, align 8
  br label %31

31:                                               ; preds = %148, %30
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %18, align 8
  %37 = sub i64 %21, 1
  %38 = icmp ult i64 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %151

41:                                               ; preds = %39
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %18, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %18, align 8
  %47 = getelementptr inbounds i8, i8* %23, i64 %45
  store i8 32, i8* %47, align 1
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i8**, i8*** %9, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %144, %48
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %18, align 8
  %61 = sub i64 %21, 1
  %62 = icmp ult i64 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  br i1 %64, label %65, label %147

65:                                               ; preds = %63
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 37
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %65
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %18, align 8
  %81 = getelementptr inbounds i8, i8* %23, i64 %79
  store i8 %78, i8* %81, align 1
  br label %144

82:                                               ; preds = %70
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %98 [
    i32 72, label %87
    i32 104, label %89
    i32 115, label %90
    i32 116, label %92
    i32 85, label %94
    i32 117, label %96
  ]

87:                                               ; preds = %82
  %88 = load i32, i32* @PAM_RHOST, align 4
  store i32 %88, i32* %17, align 4
  br label %104

89:                                               ; preds = %82
  store i32 -1, i32* %17, align 4
  br label %104

90:                                               ; preds = %82
  %91 = load i32, i32* @PAM_SERVICE, align 4
  store i32 %91, i32* %17, align 4
  br label %104

92:                                               ; preds = %82
  %93 = load i32, i32* @PAM_TTY, align 4
  store i32 %93, i32* %17, align 4
  br label %104

94:                                               ; preds = %82
  %95 = load i32, i32* @PAM_RUSER, align 4
  store i32 %95, i32* %17, align 4
  br label %104

96:                                               ; preds = %82
  %97 = load i32, i32* @PAM_USER, align 4
  store i32 %97, i32* %17, align 4
  br label %104

98:                                               ; preds = %82
  store i32 -1, i32* %17, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i64, i64* %18, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %18, align 8
  %103 = getelementptr inbounds i8, i8* %23, i64 %101
  store i8 %100, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %96, %94, %92, %90, %89, %87
  %105 = load i32, i32* %17, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %144

108:                                              ; preds = %104
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @pam_get_item(i32* %109, i32 %110, i8** %12)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @PAM_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %156

117:                                              ; preds = %108
  %118 = load i8*, i8** %12, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i8*, i8** %12, align 8
  store i8* %122, i8** %14, align 8
  br label %123

123:                                              ; preds = %140, %121
  %124 = load i8*, i8** %14, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i64, i64* %18, align 8
  %130 = sub i64 %21, 1
  %131 = icmp ult i64 %129, %130
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi i1 [ false, %123 ], [ %131, %128 ]
  br i1 %133, label %134, label %143

134:                                              ; preds = %132
  %135 = load i8*, i8** %14, align 8
  %136 = load i8, i8* %135, align 1
  %137 = load i64, i64* %18, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %18, align 8
  %139 = getelementptr inbounds i8, i8* %23, i64 %137
  store i8 %136, i8* %139, align 1
  br label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %14, align 8
  br label %123

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %107, %76
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %13, align 8
  br label %54

147:                                              ; preds = %63
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %31

151:                                              ; preds = %39
  %152 = load i64, i64* %18, align 8
  %153 = getelementptr inbounds i8, i8* %23, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @pam_info(i32* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 %155, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %156

156:                                              ; preds = %151, %115, %28
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #2

declare dso_local i32 @pam_info(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
