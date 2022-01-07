; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_anchors = type { i32 }
%struct.trust_anchor = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to open %s for reading: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"reading autotrust anchor file %s\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"could not parse auto-trust-anchor-file %s line %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"trust anchor %s has been revoked\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"failed to load trust anchor from %s at line %i, skipping\00", align 1
@.str.6 = private unnamed_addr constant [117 x i8] c"file %s has mismatching data inside: the file may only contain keys for one name, remove keys for other domain names\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"malloc failure assembling %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autr_read_file(%struct.val_anchors* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.val_anchors*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10240 x i8], align 16
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca %struct.trust_anchor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.trust_anchor* null, %struct.trust_anchor** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %22)
  store i32 0, i32* %3, align 4
  br label %142

24:                                               ; preds = %2
  %25 = load i32, i32* @VERB_ALGO, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @verbose(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %111, %94, %78, %73, %54, %24
  %29 = getelementptr inbounds [10240 x i8], [10240 x i8]* %8, i64 0, i64 0
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @read_multiline(i8* %29, i32 10240, i32* %30, i32* %7)
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds [10240 x i8], [10240 x i8]* %8, i64 0, i64 0
  %38 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %39 = call i32 @parse_var_line(i8* %37, %struct.val_anchors* %38, %struct.trust_anchor** %9)
  store i32 %39, i32* %11, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %33
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @free(i32* %49)
  store i32 0, i32* %3, align 4
  br label %142

51:                                               ; preds = %36
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %28

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @log_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @free(i32* %65)
  store i32 1, i32* %3, align 4
  br label %142

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds [10240 x i8], [10240 x i8]* %8, i64 0, i64 0
  %71 = call i32 @str_contains_data(i8* %70, i8 signext 59)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %28

74:                                               ; preds = %69
  %75 = getelementptr inbounds [10240 x i8], [10240 x i8]* %8, i64 0, i64 0
  %76 = call i64 @handle_origin(i8* %75, i32** %12, i64* %14)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %28

79:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  %80 = load %struct.val_anchors*, %struct.val_anchors** %4, align 8
  %81 = getelementptr inbounds [10240 x i8], [10240 x i8]* %8, i64 0, i64 0
  %82 = load i8*, i8** %5, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call %struct.trust_anchor* @load_trustanchor(%struct.val_anchors* %80, i8* %81, i8* %82, i32* %83, i64 %84, i32** %13, i64* %15, i32* %11)
  store %struct.trust_anchor* %85, %struct.trust_anchor** %10, align 8
  %86 = icmp ne %struct.trust_anchor* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %28

95:                                               ; preds = %79
  %96 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %97 = icmp ne %struct.trust_anchor* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %100 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  %101 = icmp ne %struct.trust_anchor* %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @fclose(i32* %105)
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @free(i32* %109)
  store i32 0, i32* %3, align 4
  br label %142

111:                                              ; preds = %98, %95
  %112 = load %struct.trust_anchor*, %struct.trust_anchor** %10, align 8
  store %struct.trust_anchor* %112, %struct.trust_anchor** %9, align 8
  br label %28

113:                                              ; preds = %28
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @fclose(i32* %114)
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @free(i32* %116)
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @free(i32* %118)
  %120 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %121 = icmp ne %struct.trust_anchor* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %123)
  store i32 0, i32* %3, align 4
  br label %142

125:                                              ; preds = %113
  %126 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %127 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %126, i32 0, i32 0
  %128 = call i32 @lock_basic_lock(i32* %127)
  %129 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %130 = call i32 @autr_assemble(%struct.trust_anchor* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %134 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %133, i32 0, i32 0
  %135 = call i32 @lock_basic_unlock(i32* %134)
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %136)
  store i32 0, i32* %3, align 4
  br label %142

138:                                              ; preds = %125
  %139 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %140 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %139, i32 0, i32 0
  %141 = call i32 @lock_basic_unlock(i32* %140)
  store i32 1, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %132, %122, %102, %58, %41, %19
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @read_multiline(i8*, i32, i32*, i32*) #1

declare dso_local i32 @parse_var_line(i8*, %struct.val_anchors*, %struct.trust_anchor**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

declare dso_local i32 @str_contains_data(i8*, i8 signext) #1

declare dso_local i64 @handle_origin(i8*, i32**, i64*) #1

declare dso_local %struct.trust_anchor* @load_trustanchor(%struct.val_anchors*, i8*, i8*, i32*, i64, i32**, i64*, i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @autr_assemble(%struct.trust_anchor*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
