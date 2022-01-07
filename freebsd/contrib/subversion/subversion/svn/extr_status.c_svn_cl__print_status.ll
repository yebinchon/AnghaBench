; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_svn_cl__print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status.c_svn_cl__print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i32, i32, i64, i64 }

@svn_wc_status_external = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_status_normal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__print_status(i8* %0, i8* %1, i8* %2, %struct.TYPE_4__* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %19, align 8
  store i64 %4, i64* %20, align 8
  store i64 %5, i64* %21, align 8
  store i64 %6, i64* %22, align 8
  store i64 %7, i64* %23, align 8
  store i64 %8, i64* %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %14
  %33 = load i64, i64* %23, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @svn_wc_status_external, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45, %40, %35, %32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @svn_wc_status_none, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @svn_wc_status_none, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %45, %14
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %15, align 8
  br label %159

65:                                               ; preds = %57, %51
  %66 = load i64, i64* %20, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %145

68:                                               ; preds = %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @svn_wc_status_external, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @svn_wc_status_none, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %15, align 8
  br label %159

87:                                               ; preds = %80, %74, %68
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @svn_wc_status_none, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %144

98:                                               ; preds = %92
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @svn_wc_status_normal, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @svn_wc_status_none, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %104, %98
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @svn_wc_status_normal, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @svn_wc_status_none, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %116, %110
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %143, i32** %15, align 8
  br label %159

144:                                              ; preds = %137, %132, %127, %122, %116, %104, %92, %87
  br label %145

145:                                              ; preds = %144, %65
  %146 = load i8*, i8** %16, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = load i8*, i8** %18, align 8
  %149 = load i64, i64* %21, align 8
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %24, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %153 = load i32*, i32** %25, align 8
  %154 = load i32*, i32** %26, align 8
  %155 = load i32*, i32** %27, align 8
  %156 = load i32*, i32** %28, align 8
  %157 = load i32*, i32** %29, align 8
  %158 = call i32* @print_status(i8* %146, i8* %147, i8* %148, i64 %149, i64 %150, i64 %151, %struct.TYPE_4__* %152, i32* %153, i32* %154, i32* %155, i32* %156, i32* %157)
  store i32* %158, i32** %15, align 8
  br label %159

159:                                              ; preds = %145, %142, %85, %63
  %160 = load i32*, i32** %15, align 8
  ret i32* %160
}

declare dso_local i32* @print_status(i8*, i8*, i8*, i64, i64, i64, %struct.TYPE_4__*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
