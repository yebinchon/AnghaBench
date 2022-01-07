; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/eli/extr_geom_eli.c_eli_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@G_FLAG_VERBOSE = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"setkey\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"delkey\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Unknown command: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i32)* @eli_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eli_main(%struct.gctl_req* %0, i32 %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %7 = call i32 @eli_protect(%struct.gctl_req* %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %135

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @G_FLAG_VERBOSE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* @verbose, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %18 = call i8* @gctl_get_ascii(%struct.gctl_req* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %23 = call i32 @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %135

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %34 = call i32 @eli_init(%struct.gctl_req* %33)
  br label %135

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 @eli_attach(%struct.gctl_req* %40)
  br label %134

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %48 = call i32 @eli_configure(%struct.gctl_req* %47)
  br label %133

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %55 = call i32 @eli_setkey(%struct.gctl_req* %54)
  br label %132

56:                                               ; preds = %49
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %62 = call i32 @eli_delkey(%struct.gctl_req* %61)
  br label %131

63:                                               ; preds = %56
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %69 = call i32 @eli_resume(%struct.gctl_req* %68)
  br label %130

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %76 = call i32 @eli_kill(%struct.gctl_req* %75)
  br label %129

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = call i32 @eli_backup(%struct.gctl_req* %82)
  br label %128

84:                                               ; preds = %77
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %90 = call i32 @eli_restore(%struct.gctl_req* %89)
  br label %127

91:                                               ; preds = %84
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %97 = call i32 @eli_resize(%struct.gctl_req* %96)
  br label %126

98:                                               ; preds = %91
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %104 = call i32 @eli_version(%struct.gctl_req* %103)
  br label %125

105:                                              ; preds = %98
  %106 = load i8*, i8** %5, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %111 = call i32 @eli_dump(%struct.gctl_req* %110)
  br label %124

112:                                              ; preds = %105
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %118 = call i32 @eli_clear(%struct.gctl_req* %117)
  br label %123

119:                                              ; preds = %112
  %120 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @gctl_error(%struct.gctl_req* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %109
  br label %125

125:                                              ; preds = %124, %102
  br label %126

126:                                              ; preds = %125, %95
  br label %127

127:                                              ; preds = %126, %88
  br label %128

128:                                              ; preds = %127, %81
  br label %129

129:                                              ; preds = %128, %74
  br label %130

130:                                              ; preds = %129, %67
  br label %131

131:                                              ; preds = %130, %60
  br label %132

132:                                              ; preds = %131, %53
  br label %133

133:                                              ; preds = %132, %46
  br label %134

134:                                              ; preds = %133, %39
  br label %135

135:                                              ; preds = %9, %21, %134, %32
  ret void
}

declare dso_local i32 @eli_protect(%struct.gctl_req*) #1

declare dso_local i8* @gctl_get_ascii(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @eli_init(%struct.gctl_req*) #1

declare dso_local i32 @eli_attach(%struct.gctl_req*) #1

declare dso_local i32 @eli_configure(%struct.gctl_req*) #1

declare dso_local i32 @eli_setkey(%struct.gctl_req*) #1

declare dso_local i32 @eli_delkey(%struct.gctl_req*) #1

declare dso_local i32 @eli_resume(%struct.gctl_req*) #1

declare dso_local i32 @eli_kill(%struct.gctl_req*) #1

declare dso_local i32 @eli_backup(%struct.gctl_req*) #1

declare dso_local i32 @eli_restore(%struct.gctl_req*) #1

declare dso_local i32 @eli_resize(%struct.gctl_req*) #1

declare dso_local i32 @eli_version(%struct.gctl_req*) #1

declare dso_local i32 @eli_dump(%struct.gctl_req*) #1

declare dso_local i32 @eli_clear(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
