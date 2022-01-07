; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_getit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_get.c_getit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_options = type { i32, i32, i32, i32* }
%struct.get_entry_data = type { i32*, i32, i64, i64, i32*, i32** }

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@print_entry_short = common dso_local global i32 0, align 4
@print_entry_long = common dso_local global i32 0, align 4
@DEFAULT_COLUMNS_LONG = common dso_local global i32* null, align 8
@DEFAULT_COLUMNS_SHORT = common dso_local global i32* null, align 8
@do_get_entry = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.get_options*, i8*, i32, i8**)* @getit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getit(%struct.get_options* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.get_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.get_entry_data, align 8
  store %struct.get_options* %0, %struct.get_options** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.get_options*, %struct.get_options** %6, align 8
  %14 = getelementptr inbounds %struct.get_options, %struct.get_options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.get_options*, %struct.get_options** %6, align 8
  %19 = getelementptr inbounds %struct.get_options, %struct.get_options* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.get_options*, %struct.get_options** %6, align 8
  %24 = getelementptr inbounds %struct.get_options, %struct.get_options* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load %struct.get_options*, %struct.get_options** %6, align 8
  %29 = getelementptr inbounds %struct.get_options, %struct.get_options* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %22, %4
  %31 = load %struct.get_options*, %struct.get_options** %6, align 8
  %32 = getelementptr inbounds %struct.get_options, %struct.get_options* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.get_options*, %struct.get_options** %6, align 8
  %37 = getelementptr inbounds %struct.get_options, %struct.get_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.get_options*, %struct.get_options** %6, align 8
  %42 = getelementptr inbounds %struct.get_options, %struct.get_options* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load %struct.get_options*, %struct.get_options** %6, align 8
  %47 = getelementptr inbounds %struct.get_options, %struct.get_options* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40, %30
  %49 = load %struct.get_options*, %struct.get_options** %6, align 8
  %50 = getelementptr inbounds %struct.get_options, %struct.get_options* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.get_options*, %struct.get_options** %6, align 8
  %55 = getelementptr inbounds %struct.get_options, %struct.get_options* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.get_options*, %struct.get_options** %6, align 8
  %60 = getelementptr inbounds %struct.get_options, %struct.get_options* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53
  %64 = load %struct.get_options*, %struct.get_options** %6, align 8
  %65 = getelementptr inbounds %struct.get_options, %struct.get_options* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %58, %48
  %67 = load %struct.get_options*, %struct.get_options** %6, align 8
  %68 = getelementptr inbounds %struct.get_options, %struct.get_options* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.get_options*, %struct.get_options** %6, align 8
  %73 = getelementptr inbounds %struct.get_options, %struct.get_options* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.get_options*, %struct.get_options** %6, align 8
  %78 = getelementptr inbounds %struct.get_options, %struct.get_options* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.get_options*, %struct.get_options** %6, align 8
  %83 = getelementptr inbounds %struct.get_options, %struct.get_options* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %76, %71, %66
  %85 = load %struct.get_options*, %struct.get_options** %6, align 8
  %86 = getelementptr inbounds %struct.get_options, %struct.get_options* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i8**, i8*** %9, align 8
  %93 = call i32 @listit(i8* %90, i32 %91, i8** %92)
  store i32 %93, i32* %5, align 4
  br label %184

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 4
  %98 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 5
  store i32** %97, i32*** %98, align 8
  %99 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.get_options*, %struct.get_options** %6, align 8
  %102 = getelementptr inbounds %struct.get_options, %struct.get_options* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  %106 = call i32* (...) @rtbl_create()
  %107 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  store i32* %106, i32** %107, align 8
  %108 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @rtbl_set_separator(i32* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @print_entry_short, align 4
  %112 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  br label %116

113:                                              ; preds = %94
  %114 = load i32, i32* @print_entry_long, align 4
  %115 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 1
  store i32 %114, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %105
  %117 = load %struct.get_options*, %struct.get_options** %6, align 8
  %118 = getelementptr inbounds %struct.get_options, %struct.get_options* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.get_options*, %struct.get_options** %6, align 8
  %123 = getelementptr inbounds %struct.get_options, %struct.get_options* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** @DEFAULT_COLUMNS_LONG, align 8
  %128 = call i64 @setup_columns(%struct.get_entry_data* %12, i32* %127)
  store i64 %128, i64* %11, align 8
  br label %132

129:                                              ; preds = %121
  %130 = load i32*, i32** @DEFAULT_COLUMNS_SHORT, align 8
  %131 = call i64 @setup_columns(%struct.get_entry_data* %12, i32* %130)
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %138

133:                                              ; preds = %116
  %134 = load %struct.get_options*, %struct.get_options** %6, align 8
  %135 = getelementptr inbounds %struct.get_options, %struct.get_options* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @setup_columns(%struct.get_entry_data* %12, i32* %136)
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %133, %132
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @rtbl_destroy(i32* %147)
  br label %149

149:                                              ; preds = %145, %141
  store i32 0, i32* %5, align 4
  br label %184

150:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %164, %150
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load i8**, i8*** %9, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @do_get_entry, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = call i64 @foreach_principal(i8* %160, i32 %161, i8* %162, %struct.get_entry_data* %12)
  store i64 %163, i64* %11, align 8
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %151

167:                                              ; preds = %151
  %168 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* @stdout, align 4
  %175 = call i32 @rtbl_format(i32* %173, i32 %174)
  %176 = getelementptr inbounds %struct.get_entry_data, %struct.get_entry_data* %12, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @rtbl_destroy(i32* %177)
  br label %179

179:                                              ; preds = %171, %167
  %180 = call i32 @free_columns(%struct.get_entry_data* %12)
  %181 = load i64, i64* %11, align 8
  %182 = icmp ne i64 %181, 0
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %179, %149, %89
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @listit(i8*, i32, i8**) #1

declare dso_local i32* @rtbl_create(...) #1

declare dso_local i32 @rtbl_set_separator(i32*, i8*) #1

declare dso_local i64 @setup_columns(%struct.get_entry_data*, i32*) #1

declare dso_local i32 @rtbl_destroy(i32*) #1

declare dso_local i64 @foreach_principal(i8*, i32, i8*, %struct.get_entry_data*) #1

declare dso_local i32 @rtbl_format(i32*, i32) #1

declare dso_local i32 @free_columns(%struct.get_entry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
