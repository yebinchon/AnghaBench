; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_bind_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_read_bind_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error opening file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"reading in bind-compat-mode: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"trusted-keys\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error in trusted key: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.val_anchors*, i32*, i8*)* @anchor_read_bind_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anchor_read_bind_file(%struct.val_anchors* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.val_anchors*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.val_anchors* %0, %struct.val_anchors** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %18)
  store i32 0, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load i32, i32* @VERB_QUERY, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @verbose(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @sldns_buffer_clear(i32* %24)
  br label %26

26:                                               ; preds = %74, %40, %20
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @readkeyword_bindfile(i32* %27, i32* %28, i32* %8, i32 1)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 12
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @sldns_buffer_begin(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @sldns_buffer_clear(i32* %41)
  br label %26

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @skip_to_special(i32* %44, i32* %45, i32* %8, i8 signext 123)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fclose(i32* %51)
  store i32 0, i32* %4, align 4
  br label %80

53:                                               ; preds = %43
  %54 = load %struct.val_anchors*, %struct.val_anchors** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @process_bind_contents(%struct.val_anchors* %54, i32* %55, i32* %8, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @fclose(i32* %62)
  store i32 0, i32* %4, align 4
  br label %80

64:                                               ; preds = %53
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @skip_to_special(i32* %65, i32* %66, i32* %8, i8 signext 59)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @fclose(i32* %72)
  store i32 0, i32* %4, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @sldns_buffer_clear(i32* %75)
  br label %26

77:                                               ; preds = %26
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @fclose(i32* %78)
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %69, %59, %48, %15
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @readkeyword_bindfile(i32*, i32*, i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @skip_to_special(i32*, i32*, i32*, i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @process_bind_contents(%struct.val_anchors*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
