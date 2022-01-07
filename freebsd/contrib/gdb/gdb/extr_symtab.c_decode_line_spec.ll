; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_decode_line_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_decode_line_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtabs_and_lines = type { i32 }
%struct.symtab_and_line = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Empty line specification.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Junk at end of line specification: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_line_spec(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.symtabs_and_lines, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symtab_and_line, align 4
  %7 = alloca %struct.symtab_and_line, align 4
  %8 = alloca %struct.symtabs_and_lines, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i64 (...) @get_current_source_symtab_and_line()
  %15 = bitcast %struct.symtab_and_line* %7 to i64*
  store i64 %14, i64* %15, align 4
  %16 = bitcast %struct.symtab_and_line* %6 to i8*
  %17 = bitcast %struct.symtab_and_line* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @decode_line_1(i8** %4, i32 %18, i32 %20, i32 %22, i8*** null, i32* null)
  %24 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.symtabs_and_lines* %3 to i8*
  %26 = bitcast %struct.symtabs_and_lines* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %13
  %34 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @get_current_source_symtab_and_line(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @decode_line_1(i8**, i32, i32, i32, i8***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
