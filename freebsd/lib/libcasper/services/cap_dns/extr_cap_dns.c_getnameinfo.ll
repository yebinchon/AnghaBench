; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getnameinfo\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hostlen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"servlen\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"sa\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@EAI_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"serv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_getnameinfo(i32* %0, %struct.sockaddr* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = call i32* @nvlist_create(i32 0)
  store i32* %20, i32** %18, align 8
  %21 = load i32*, i32** %18, align 8
  %22 = call i32 @nvlist_add_string(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %18, align 8
  %24 = load i64, i64* %14, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @nvlist_add_number(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %18, align 8
  %28 = load i64, i64* %16, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @nvlist_add_number(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %18, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @nvlist_add_binary(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.sockaddr* %32, i64 %33)
  %35 = load i32*, i32** %18, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @nvlist_add_number(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = call i32* @cap_xfer_nvlist(i32* %38, i32* %39)
  store i32* %40, i32** %18, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %44, i32* %9, align 4
  br label %87

45:                                               ; preds = %8
  %46 = load i32*, i32** %18, align 8
  %47 = call i64 @nvlist_get_number(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %18, align 8
  %51 = call i64 @nvlist_get_number(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %19, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @nvlist_destroy(i32* %53)
  %55 = load i32, i32* %19, align 4
  store i32 %55, i32* %9, align 4
  br label %87

56:                                               ; preds = %45
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32*, i32** %18, align 8
  %61 = call i64 @nvlist_exists_string(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %13, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @nvlist_get_string(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, 1
  %69 = call i32 @strlcpy(i8* %64, i32 %66, i64 %68)
  br label %70

70:                                               ; preds = %63, %59, %56
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32*, i32** %18, align 8
  %75 = call i64 @nvlist_exists_string(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i8*, i8** %15, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @nvlist_get_string(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, 1
  %83 = call i32 @strlcpy(i8* %78, i32 %80, i64 %82)
  br label %84

84:                                               ; preds = %77, %73, %70
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @nvlist_destroy(i32* %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %49, %43
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, %struct.sockaddr*, i64) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i64 @nvlist_exists_string(i32*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @nvlist_get_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
