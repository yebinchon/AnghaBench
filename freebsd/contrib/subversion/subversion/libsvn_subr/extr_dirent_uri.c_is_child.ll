; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_is_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_is_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@type_uri = common dso_local global i64 0, align 8
@type_dirent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i8*, i32*)* @is_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_child(i64 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @SVN_PATH_IS_EMPTY(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @SVN_PATH_IS_EMPTY(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %5, align 8
  br label %157

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @type_uri, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @type_dirent, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @dirent_is_rooted(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %19
  store i8* null, i8** %5, align 8
  br label %157

32:                                               ; preds = %27, %23
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @apr_pstrdup(i32* %36, i8* %37)
  br label %41

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i8* [ %38, %35 ], [ %40, %39 ]
  store i8* %42, i8** %5, align 8
  br label %157

43:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi i1 [ false, %44 ], [ %57, %51 ]
  br i1 %59, label %60, label %77

60:                                               ; preds = %58
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i8* null, i8** %5, align 8
  br label %157

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %44

77:                                               ; preds = %58
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %156

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %156

91:                                               ; preds = %84
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %99, label %122

99:                                               ; preds = %91
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 47
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i8* null, i8** %5, align 8
  br label %157

107:                                              ; preds = %99
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = call i8* @apr_pstrdup(i32* %111, i8* %114)
  br label %120

116:                                              ; preds = %107
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  br label %120

120:                                              ; preds = %116, %110
  %121 = phi i8* [ %115, %110 ], [ %119, %116 ]
  store i8* %121, i8** %5, align 8
  br label %157

122:                                              ; preds = %91
  %123 = load i8*, i8** %8, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 47
  br i1 %128, label %129, label %154

129:                                              ; preds = %122
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %129
  %137 = load i32*, i32** %9, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32*, i32** %9, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = call i8* @apr_pstrdup(i32* %140, i8* %144)
  br label %151

146:                                              ; preds = %136
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  br label %151

151:                                              ; preds = %146, %139
  %152 = phi i8* [ %145, %139 ], [ %150, %146 ]
  store i8* %152, i8** %5, align 8
  br label %157

153:                                              ; preds = %129
  store i8* null, i8** %5, align 8
  br label %157

154:                                              ; preds = %122
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155, %84, %77
  store i8* null, i8** %5, align 8
  br label %157

157:                                              ; preds = %156, %153, %151, %120, %106, %72, %41, %31, %18
  %158 = load i8*, i8** %5, align 8
  ret i8* %158
}

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i64 @dirent_is_rooted(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
