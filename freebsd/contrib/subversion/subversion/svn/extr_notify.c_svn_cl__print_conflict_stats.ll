; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_notify.c_svn_cl__print_conflict_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_notify.c_svn_cl__print_conflict_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Summary of conflicts:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  Text conflicts: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  Property conflicts: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  Tree conflicts: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"  Text conflicts: %s (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"  Property conflicts: %s (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"  Tree conflicts: %s (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  Skipped paths: %d\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__print_conflict_stats(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @apr_hash_count(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @apr_hash_count(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @apr_hash_count(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49, %46, %43, %40, %37, %34, %2
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %55, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %72, i32 %73, i32 %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %81, i32 %82, i32 %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %90, i32 %91, i32 %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %89, %86
  br label %148

96:                                               ; preds = %65, %62, %59
  %97 = load i32, i32* %5, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @remaining_str(i32* %105, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @resolved_str(i32* %108, i32 %109)
  %111 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %103, i32 %104, i32 %107, i32 %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  br label %113

113:                                              ; preds = %102, %99
  %114 = load i32, i32* %6, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @remaining_str(i32* %122, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @resolved_str(i32* %125, i32 %126)
  %128 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %120, i32 %121, i32 %124, i32 %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %130

130:                                              ; preds = %119, %116
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @remaining_str(i32* %139, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @resolved_str(i32* %142, i32 %143)
  %145 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %137, i32 %138, i32 %141, i32 %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %136, %133
  br label %148

148:                                              ; preds = %147, %95
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %154, i32 %155, i64 %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  br label %161

161:                                              ; preds = %153, %148
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %162
}

declare dso_local i32 @apr_hash_count(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @remaining_str(i32*, i32) #1

declare dso_local i32 @resolved_str(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
