; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_info-cmd.c_print_info_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_info-cmd.c_print_info_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_7__*, i32*)* @print_info_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_info_item(i8* %0, i8* %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %34

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @svn_cl__local_style_skip_ancestor(i32 %30, i8* %31, i32* %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = phi i8* [ %26, %23 ], [ %33, %27 ]
  br label %36

36:                                               ; preds = %34, %17
  %37 = phi i8* [ null, %17 ], [ %35, %34 ]
  store i8* %37, i8** %10, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @stdout, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %159 [
    i32 137, label %51
    i32 129, label %60
    i32 133, label %68
    i32 132, label %76
    i32 131, label %84
    i32 130, label %92
    i32 134, label %100
    i32 135, label %108
    i32 136, label %126
    i32 128, label %134
  ]

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @svn_node_kind_to_word(i32 %54)
  %56 = load i8*, i8** %10, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @print_info_item_string(i8* %55, i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %161

60:                                               ; preds = %47
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @print_info_item_string(i8* %63, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %161

68:                                               ; preds = %47
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i8* @relative_url(%struct.TYPE_7__* %69, i32* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @print_info_item_string(i8* %71, i8* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %161

76:                                               ; preds = %47
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @print_info_item_string(i8* %79, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %161

84:                                               ; preds = %47
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @print_info_item_string(i8* %87, i8* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %161

92:                                               ; preds = %47
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @print_info_item_revision(i32 %95, i8* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %161

100:                                              ; preds = %47
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @print_info_item_revision(i32 %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  br label %161

108:                                              ; preds = %47
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i8* @svn_time_to_cstring(i32 %117, i32* %118)
  br label %120

120:                                              ; preds = %114, %113
  %121 = phi i8* [ null, %113 ], [ %119, %114 ]
  %122 = load i8*, i8** %10, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @print_info_item_string(i8* %121, i8* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %161

126:                                              ; preds = %47
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @print_info_item_string(i8* %129, i8* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %161

134:                                              ; preds = %47
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = icmp ne %struct.TYPE_6__* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  br label %153

152:                                              ; preds = %139, %134
  br label %153

153:                                              ; preds = %152, %146
  %154 = phi i8* [ %151, %146 ], [ null, %152 ]
  %155 = load i8*, i8** %10, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @print_info_item_string(i8* %154, i8* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  br label %161

159:                                              ; preds = %47
  %160 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %161

161:                                              ; preds = %159, %153, %126, %120, %100, %92, %84, %76, %68, %60, %51
  %162 = load i64, i64* @TRUE, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %165
}

declare dso_local i8* @svn_cl__local_style_skip_ancestor(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_fputs(i8*, i32, i32*) #1

declare dso_local i32 @print_info_item_string(i8*, i8*, i32*) #1

declare dso_local i8* @svn_node_kind_to_word(i32) #1

declare dso_local i8* @relative_url(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @print_info_item_revision(i32, i8*, i32*) #1

declare dso_local i8* @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
