; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_string_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_clparse.c_parse_string_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { %struct.string_list*, i32 }

@STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expecting media options.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no memory for string list entry.\00", align 1
@COMMA = common dso_local global i32 0, align 4
@SEMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"expecting semicolon.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_string_list(i32* %0, %struct.string_list** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.string_list**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.string_list*, align 8
  %11 = alloca %struct.string_list*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.string_list** %1, %struct.string_list*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.string_list**, %struct.string_list*** %5, align 8
  %13 = load %struct.string_list*, %struct.string_list** %12, align 8
  %14 = icmp ne %struct.string_list* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.string_list**, %struct.string_list*** %5, align 8
  %17 = load %struct.string_list*, %struct.string_list** %16, align 8
  store %struct.string_list* %17, %struct.string_list** %10, align 8
  br label %18

18:                                               ; preds = %24, %15
  %19 = load %struct.string_list*, %struct.string_list** %10, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load %struct.string_list*, %struct.string_list** %20, align 8
  %22 = icmp ne %struct.string_list* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.string_list*, %struct.string_list** %10, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 0
  %27 = load %struct.string_list*, %struct.string_list** %26, align 8
  store %struct.string_list* %27, %struct.string_list** %10, align 8
  br label %18

28:                                               ; preds = %18
  br label %30

29:                                               ; preds = %3
  store %struct.string_list* null, %struct.string_list** %10, align 8
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %81, %30
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @next_token(i8** %8, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @STRING, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @parse_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @skip_to_semi(i32* %39)
  br label %91

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call %struct.string_list* @new_string_list(i64 %46)
  store %struct.string_list* %47, %struct.string_list** %11, align 8
  %48 = load %struct.string_list*, %struct.string_list** %11, align 8
  %49 = icmp eq %struct.string_list* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.string_list*, %struct.string_list** %11, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @memcpy(i32 %55, i8* %56, i64 %57)
  %59 = load %struct.string_list*, %struct.string_list** %11, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %59, i32 0, i32 0
  store %struct.string_list* null, %struct.string_list** %60, align 8
  %61 = load %struct.string_list*, %struct.string_list** %10, align 8
  %62 = icmp ne %struct.string_list* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.string_list*, %struct.string_list** %11, align 8
  %65 = load %struct.string_list*, %struct.string_list** %10, align 8
  %66 = getelementptr inbounds %struct.string_list, %struct.string_list* %65, i32 0, i32 0
  store %struct.string_list* %64, %struct.string_list** %66, align 8
  br label %70

67:                                               ; preds = %52
  %68 = load %struct.string_list*, %struct.string_list** %11, align 8
  %69 = load %struct.string_list**, %struct.string_list*** %5, align 8
  store %struct.string_list* %68, %struct.string_list** %69, align 8
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.string_list*, %struct.string_list** %11, align 8
  store %struct.string_list* %71, %struct.string_list** %10, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @next_token(i8** %8, i32* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @COMMA, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  br i1 %82, label %31, label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SEMI, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = call i32 @parse_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @skip_to_semi(i32* %89)
  br label %91

91:                                               ; preds = %37, %87, %83
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.string_list* @new_string_list(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
