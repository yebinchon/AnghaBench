; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }
%struct.varent = type { i8** }

@STRpath = common dso_local global i32 0, align 4
@STRrecognize_only_executables = common dso_local global i32 0, align 4
@TW_FL_REL = common dso_local global i32 0, align 4
@tw_cmd_got = common dso_local global i32 0, align 4
@opendir_cleanup = common dso_local global i32 0, align 4
@STRslash = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tw_cmd_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_cmd_cmd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.varent*, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i64, align 8
  store i8* null, i8** %3, align 8
  %9 = load i32, i32* @STRpath, align 4
  %10 = call %struct.varent* @adrof(i32 %9)
  store %struct.varent* %10, %struct.varent** %6, align 8
  %11 = load i32, i32* @STRrecognize_only_executables, align 4
  %12 = call %struct.varent* @adrof(i32 %11)
  store %struct.varent* %12, %struct.varent** %7, align 8
  %13 = load %struct.varent*, %struct.varent** %6, align 8
  %14 = icmp eq %struct.varent* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %0
  %16 = load %struct.varent*, %struct.varent** %6, align 8
  %17 = getelementptr inbounds %struct.varent, %struct.varent* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %0
  br label %125

21:                                               ; preds = %15
  %22 = load %struct.varent*, %struct.varent** %6, align 8
  %23 = getelementptr inbounds %struct.varent, %struct.varent* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %5, align 8
  br label %25

25:                                               ; preds = %122, %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %125

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @TW_FL_REL, align 4
  %39 = load i32, i32* @tw_cmd_got, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @tw_cmd_got, align 4
  br label %122

41:                                               ; preds = %29
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @short2str(i8* %43)
  %45 = call i8* @opendir(i32 %44)
  store i8* %45, i8** %1, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %122

48:                                               ; preds = %41
  %49 = load i8*, i8** %1, align 8
  %50 = load i32, i32* @opendir_cleanup, align 4
  %51 = call i32 @cleanup_push(i8* %49, i32 %50)
  %52 = load %struct.varent*, %struct.varent** %7, align 8
  %53 = icmp ne %struct.varent* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @STRslash, align 4
  %58 = call i8* @Strspl(i8* %56, i32 %57)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* @xfree, align 4
  %61 = call i32 @cleanup_push(i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %48
  br label %63

63:                                               ; preds = %116, %115, %84, %62
  %64 = load i8*, i8** %1, align 8
  %65 = call %struct.dirent* @readdir(i8* %64)
  store %struct.dirent* %65, %struct.dirent** %2, align 8
  %66 = icmp ne %struct.dirent* %65, null
  br i1 %66, label %67, label %119

67:                                               ; preds = %63
  %68 = load %struct.dirent*, %struct.dirent** %2, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @str2short(i8* %70)
  store i8* %71, i8** %4, align 8
  %72 = load %struct.dirent*, %struct.dirent** %2, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = load %struct.varent*, %struct.varent** %7, align 8
  %78 = icmp ne %struct.varent* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @executable(i8* %80, i8* %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %67
  br label %63

85:                                               ; preds = %79, %76
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @Strlen(i8* %86)
  store i64 %87, i64* %8, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 35
  br i1 %92, label %115, label %93

93:                                               ; preds = %85
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 46
  br i1 %98, label %115, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %4, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 126
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %116

115:                                              ; preds = %107, %99, %93, %85
  br label %63

116:                                              ; preds = %107
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @tw_cmd_add(i8* %117)
  br label %63

119:                                              ; preds = %63
  %120 = load i8*, i8** %1, align 8
  %121 = call i32 @cleanup_until(i8* %120)
  br label %122

122:                                              ; preds = %119, %47, %37
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %5, align 8
  br label %25

125:                                              ; preds = %20, %25
  ret void
}

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i8* @opendir(i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i8* @Strspl(i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i8*) #1

declare dso_local i8* @str2short(i8*) #1

declare dso_local i32 @executable(i8*, i8*, i32) #1

declare dso_local i64 @Strlen(i8*) #1

declare dso_local i32 @tw_cmd_add(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
