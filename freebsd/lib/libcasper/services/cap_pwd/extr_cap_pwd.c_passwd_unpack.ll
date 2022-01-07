; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_passwd_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_passwd_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i8*, i32, i32, i32, i32, i32, i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pw_name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pw_uid\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pw_gid\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"pw_change\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pw_passwd\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"pw_class\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pw_gecos\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pw_dir\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pw_shell\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"pw_expire\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pw_fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.passwd*, i8*, i64)* @passwd_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passwd_unpack(i32* %0, %struct.passwd* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.passwd* %1, %struct.passwd** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @nvlist_exists_string(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %96

16:                                               ; preds = %4
  %17 = load %struct.passwd*, %struct.passwd** %7, align 8
  %18 = call i32 @explicit_bzero(%struct.passwd* %17, i32 72)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.passwd*, %struct.passwd** %7, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 10
  %22 = call i32 @passwd_unpack_string(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %21, i8** %8, i64* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %96

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @nvlist_get_number(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.passwd*, %struct.passwd** %7, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 9
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @nvlist_get_number(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.passwd*, %struct.passwd** %7, align 8
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %34, i32 0, i32 8
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @nvlist_get_number(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.passwd*, %struct.passwd** %7, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.passwd*, %struct.passwd** %7, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 6
  %44 = call i32 @passwd_unpack_string(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %43, i8** %8, i64* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %96

49:                                               ; preds = %27
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.passwd*, %struct.passwd** %7, align 8
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 5
  %53 = call i32 @passwd_unpack_string(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %52, i8** %8, i64* %9)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %96

58:                                               ; preds = %49
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.passwd*, %struct.passwd** %7, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 4
  %62 = call i32 @passwd_unpack_string(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %61, i8** %8, i64* %9)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %96

67:                                               ; preds = %58
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.passwd*, %struct.passwd** %7, align 8
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %69, i32 0, i32 3
  %71 = call i32 @passwd_unpack_string(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %70, i8** %8, i64* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %96

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.passwd*, %struct.passwd** %7, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 2
  %80 = call i32 @passwd_unpack_string(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %79, i8** %8, i64* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load i32*, i32** %6, align 8
  %87 = call i64 @nvlist_get_number(i32* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.passwd*, %struct.passwd** %7, align 8
  %90 = getelementptr inbounds %struct.passwd, %struct.passwd* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @nvlist_get_number(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %93 = trunc i64 %92 to i32
  %94 = load %struct.passwd*, %struct.passwd** %7, align 8
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %85, %83, %74, %65, %56, %47, %25, %14
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @explicit_bzero(%struct.passwd*, i32) #1

declare dso_local i32 @passwd_unpack_string(i32*, i8*, i32*, i8**, i64*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
