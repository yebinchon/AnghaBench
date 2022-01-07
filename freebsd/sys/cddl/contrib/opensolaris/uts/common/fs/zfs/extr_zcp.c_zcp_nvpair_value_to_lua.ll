; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_nvpair_value_to_lua.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_nvpair_value_to_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Unhandled nvpair type %d for key '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @zcp_nvpair_value_to_lua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_nvpair_value_to_lua(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  store i32 0, i32* %5, align 4
  br label %146

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @nvpair_type(i32* %26)
  switch i32 %27, label %131 [
    i32 134, label %28
    i32 130, label %33
    i32 133, label %38
    i32 131, label %43
    i32 129, label %50
    i32 128, label %77
    i32 132, label %104
  ]

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @fnvpair_value_boolean_value(i32* %30)
  %32 = call i32 @lua_pushboolean(i32* %29, i32 %31)
  br label %144

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i8* @fnvpair_value_string(i32* %35)
  %37 = call i32 @lua_pushstring(i32* %34, i8* %36)
  br label %144

38:                                               ; preds = %25
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fnvpair_value_int64(i32* %40)
  %42 = call i32 @lua_pushinteger(i32* %39, i32 %41)
  br label %144

43:                                               ; preds = %25
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @fnvpair_value_nvlist(i32* %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @zcp_nvlist_to_lua(i32* %44, i32 %46, i8* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  br label %144

50:                                               ; preds = %25
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @nvpair_value_string_array(i32* %51, i8*** %11, i32* %12)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @lua_newtable(i32* %53)
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %73, %50
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @lua_pushinteger(i32* %60, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i8**, i8*** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @lua_pushstring(i32* %64, i8* %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @lua_settable(i32* %71, i32 -3)
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %55

76:                                               ; preds = %55
  br label %144

77:                                               ; preds = %25
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @nvpair_value_uint64_array(i32* %78, i32** %14, i32* %15)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @lua_newtable(i32* %80)
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %100, %77
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @lua_pushinteger(i32* %87, i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @lua_pushinteger(i32* %91, i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @lua_settable(i32* %98, i32 -3)
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %82

103:                                              ; preds = %82
  br label %144

104:                                              ; preds = %25
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @nvpair_value_int64_array(i32* %105, i32** %17, i32* %18)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @lua_newtable(i32* %107)
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %127, %104
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 @lua_pushinteger(i32* %114, i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @lua_pushinteger(i32* %118, i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @lua_settable(i32* %125, i32 -3)
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %109

130:                                              ; preds = %109
  br label %144

131:                                              ; preds = %25
  %132 = load i8*, i8** %8, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @nvpair_type(i32* %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i8* @nvpair_name(i32* %139)
  %141 = call i32 @snprintf(i8* %135, i32 %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %138, i8* %140)
  br label %142

142:                                              ; preds = %134, %131
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %5, align 4
  br label %146

144:                                              ; preds = %130, %103, %76, %43, %38, %33, %28
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %142, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @fnvpair_value_boolean_value(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i32 @zcp_nvlist_to_lua(i32*, i32, i8*, i32) #1

declare dso_local i32 @fnvpair_value_nvlist(i32*) #1

declare dso_local i32 @nvpair_value_string_array(i32*, i8***, i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @nvpair_value_uint64_array(i32*, i32**, i32*) #1

declare dso_local i32 @nvpair_value_int64_array(i32*, i32**, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
