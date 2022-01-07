; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_map_entry = type { i32 (i32, i8**)*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"umount\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ujail\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"unjail\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"unknown command: %s\0A\00", align 1
@be = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.command_map_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.command_map_entry* null, %struct.command_map_entry** %6, align 8
  store i8* null, i8** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @usage(i32 0)
  store i32 %13, i32* %3, align 4
  br label %97

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @usage(i32 0)
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 3
  store i32 %34, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  store i8** %36, i8*** %5, align 8
  br label %45

37:                                               ; preds = %14
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8** %44, i8*** %5, align 8
  br label %45

45:                                               ; preds = %37, %25
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55
  %64 = call i32 @usage(i32 1)
  store i32 %64, i32* %3, align 4
  br label %97

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = call %struct.command_map_entry* @get_cmd_info(i8* %66)
  store %struct.command_map_entry* %67, %struct.command_map_entry** %6, align 8
  %68 = icmp eq %struct.command_map_entry* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %71)
  %73 = call i32 @usage(i32 0)
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %65
  %75 = load i8*, i8** %8, align 8
  %76 = call i32* @libbe_init(i8* %75)
  store i32* %76, i32** @be, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %97

79:                                               ; preds = %74
  %80 = load i32*, i32** @be, align 8
  %81 = load %struct.command_map_entry*, %struct.command_map_entry** %6, align 8
  %82 = getelementptr inbounds %struct.command_map_entry, %struct.command_map_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @libbe_print_on_error(i32* %80, i32 %86)
  %88 = load %struct.command_map_entry*, %struct.command_map_entry** %6, align 8
  %89 = getelementptr inbounds %struct.command_map_entry, %struct.command_map_entry* %88, i32 0, i32 0
  %90 = load i32 (i32, i8**)*, i32 (i32, i8**)** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = call i32 %90(i32 %91, i8** %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** @be, align 8
  %95 = call i32 @libbe_close(i32* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %79, %78, %69, %63, %23, %12
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.command_map_entry* @get_cmd_info(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @libbe_init(i8*) #1

declare dso_local i32 @libbe_print_on_error(i32*, i32) #1

declare dso_local i32 @libbe_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
