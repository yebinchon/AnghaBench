; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_handle_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_server.c_handle_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32, %struct.inferior_list_entry* }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)*, i32 (...)* }
%struct.TYPE_4__ = type { %struct.inferior_list_entry* }

@handle_query.thread_ptr = internal global %struct.inferior_list_entry* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"qSymbol::\00", align 1
@the_target = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"qfThreadInfo\00", align 1
@all_threads = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"m%x\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"qsThreadInfo\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"qPart:auxv:read::\00", align 1
@PBUFSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_target, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = icmp ne i32 (...)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_target, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %109

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @all_threads, i32 0, i32 0), align 8
  store %struct.inferior_list_entry* %29, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %32 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %36 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %35, i32 0, i32 1
  %37 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %36, align 8
  store %struct.inferior_list_entry* %37, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  br label %109

38:                                               ; preds = %24
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %44 = icmp ne %struct.inferior_list_entry* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i8*, i8** %2, align 8
  %47 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %48 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  %52 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %51, i32 0, i32 1
  %53 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %52, align 8
  store %struct.inferior_list_entry* %53, %struct.inferior_list_entry** @handle_query.thread_ptr, align 8
  br label %109

54:                                               ; preds = %42
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %109

57:                                               ; preds = %38
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_target, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i8*, i32)* %60, null
  br i1 %61, label %62, label %106

62:                                               ; preds = %57
  %63 = load i8*, i8** %2, align 8
  %64 = call i64 @strncmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %63, i32 17)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load i32, i32* @PBUFSIZ, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sdiv i32 %68, 2
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %3, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %4, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 17
  %75 = call i32 @decode_m_packet(i8* %74, i32* %5, i32* %6)
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp ugt i64 %77, %70
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = trunc i64 %70 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %66
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_target, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %84(i32 %85, i8* %72, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @write_ok(i8* %91)
  br label %104

93:                                               ; preds = %81
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %2, align 8
  %98 = call i32 @write_enn(i8* %97)
  br label %103

99:                                               ; preds = %93
  %100 = load i8*, i8** %2, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @convert_int_to_ascii(i8* %72, i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %105)
  br label %109

106:                                              ; preds = %62, %57
  %107 = load i8*, i8** %2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %106, %104, %54, %45, %28, %21
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decode_m_packet(i8*, i32*, i32*) #1

declare dso_local i32 @write_ok(i8*) #1

declare dso_local i32 @write_enn(i8*) #1

declare dso_local i32 @convert_int_to_ascii(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
