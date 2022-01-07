; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_parse_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_parse_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_entry = type { i32, i32, i8* }

@re_head = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"calloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"regcomp: %s\0A\00", align 1
@re_glue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_regexp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.re_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 44
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @strlcpy(i8* %45, i8* %49, i32 %50)
  br label %59

52:                                               ; preds = %31
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %52, %40
  br label %60

60:                                               ; preds = %59, %28, %20
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %16

64:                                               ; preds = %16
  %65 = call i32 @TAILQ_INIT(i32* @re_head)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %128, %64
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %66
  %72 = call %struct.re_entry* @calloc(i32 1, i32 16)
  store %struct.re_entry* %72, %struct.re_entry** %6, align 8
  %73 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %74 = icmp eq %struct.re_entry* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = call i8* @strerror(i32 %77)
  %79 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %71
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 126
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  %89 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %90 = getelementptr inbounds %struct.re_entry, %struct.re_entry* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i8*, i8** %4, align 8
  %93 = call i8* @strdup(i8* %92)
  %94 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %95 = getelementptr inbounds %struct.re_entry, %struct.re_entry* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %97 = getelementptr inbounds %struct.re_entry, %struct.re_entry* %96, i32 0, i32 1
  %98 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %99 = getelementptr inbounds %struct.re_entry, %struct.re_entry* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @REG_EXTENDED, align 4
  %102 = load i32, i32* @REG_NOSUB, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @regcomp(i32* %97, i8* %100, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %110 = getelementptr inbounds %struct.re_entry, %struct.re_entry* %109, i32 0, i32 1
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %112 = call i32 @regerror(i32 %108, i32* %110, i8* %111, i32 64)
  %113 = load i32, i32* @stderr, align 4
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %115 = call i32 @fprintf(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %91
  %118 = load %struct.re_entry*, %struct.re_entry** %6, align 8
  %119 = load i32, i32* @re_glue, align 4
  %120 = call i32 @TAILQ_INSERT_TAIL(i32* @re_head, %struct.re_entry* %118, i32 %119)
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 @strlen(i8* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i8*, i8** %4, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %4, align 8
  br label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %66

131:                                              ; preds = %66
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @free(i8* %132)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.re_entry* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.re_entry*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
