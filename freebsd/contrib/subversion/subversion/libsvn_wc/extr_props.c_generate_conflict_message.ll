; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_generate_conflict_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_generate_conflict_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"Trying to add new property '%s'\0Abut the property already exists.\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Trying to add new property '%s'\0Abut the property has been locally deleted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Trying to delete property '%s'\0Abut the property has been locally added.\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Trying to delete property '%s'\0Abut the property has been locally modified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [101 x i8] c"Trying to delete property '%s'\0Abut the property has been locally deleted and had a different value.\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"Trying to delete property '%s'\0Abut the local property value is different.\0A\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"Trying to change property '%s'\0Abut the local property value conflicts with the incoming change.\0A\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"Trying to change property '%s'\0Abut the property has already been locally changed to a different value.\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Trying to change property '%s'\0Abut the property has been locally deleted.\0A\00", align 1
@.str.9 = private unnamed_addr constant [96 x i8] c"Trying to change property '%s'\0Abut the property has been locally added with a different value.\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"Trying to change property '%s'\0Abut the property does not exist locally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*)* @generate_conflict_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_conflict_message(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %6
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @svn_string_compare(i32* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @svn_stringbuf_createf(i32* %31, i32 %32, i8* %33)
  store i32* %34, i32** %7, align 8
  br label %168

35:                                               ; preds = %16
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %38)
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @svn_stringbuf_createf(i32* %40, i32 %41, i8* %42)
  store i32* %43, i32** %7, align 8
  br label %168

44:                                               ; preds = %6
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %101

47:                                               ; preds = %44
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i8*, i8** %8, align 8
  %61 = call i32* @svn_stringbuf_createf(i32* %58, i32 %59, i8* %60)
  store i32* %61, i32** %7, align 8
  br label %168

62:                                               ; preds = %54, %47
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @svn_string_compare(i32* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8*, i8** %8, align 8
  %78 = call i32* @svn_stringbuf_createf(i32* %75, i32 %76, i8* %77)
  store i32* %78, i32** %7, align 8
  br label %168

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %62
  %81 = load i32*, i32** %10, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i8*, i8** %8, align 8
  %87 = call i32* @svn_stringbuf_createf(i32* %84, i32 %85, i8* %86)
  store i32* %87, i32** %7, align 8
  br label %168

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i64 @svn_string_compare(i32* %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %95)
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i8*, i8** %8, align 8
  %100 = call i32* @svn_stringbuf_createf(i32* %97, i32 %98, i8* %99)
  store i32* %100, i32** %7, align 8
  br label %168

101:                                              ; preds = %44
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i64 @svn_string_compare(i32* %105, i32* %106)
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ true, %101 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = load i32*, i32** %10, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i64 @svn_string_compare(i32* %120, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i64 @svn_string_compare(i32* %125, i32* %126)
  %128 = icmp ne i64 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %130)
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i8*, i8** %8, align 8
  %135 = call i32* @svn_stringbuf_createf(i32* %132, i32 %133, i8* %134)
  store i32* %135, i32** %7, align 8
  br label %168

136:                                              ; preds = %119, %116, %110
  %137 = load i32*, i32** %9, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32*, i32** %10, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i8*, i8** %8, align 8
  %146 = call i32* @svn_stringbuf_createf(i32* %143, i32 %144, i8* %145)
  store i32* %146, i32** %7, align 8
  br label %168

147:                                              ; preds = %139, %136
  %148 = load i32*, i32** %9, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %13, align 8
  %152 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %153 = load i8*, i8** %8, align 8
  %154 = call i32* @svn_stringbuf_createf(i32* %151, i32 %152, i8* %153)
  store i32* %154, i32** %7, align 8
  br label %168

155:                                              ; preds = %147
  %156 = load i32*, i32** %10, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32*, i32** %13, align 8
  %160 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  %161 = load i8*, i8** %8, align 8
  %162 = call i32* @svn_stringbuf_createf(i32* %159, i32 %160, i8* %161)
  store i32* %162, i32** %7, align 8
  br label %168

163:                                              ; preds = %155
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0))
  %166 = load i8*, i8** %8, align 8
  %167 = call i32* @svn_stringbuf_createf(i32* %164, i32 %165, i8* %166)
  store i32* %167, i32** %7, align 8
  br label %168

168:                                              ; preds = %163, %158, %150, %142, %124, %89, %83, %74, %57, %35, %23
  %169 = load i32*, i32** %7, align 8
  ret i32* %169
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i64 @svn_string_compare(i32*, i32*) #1

declare dso_local i32* @svn_stringbuf_createf(i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
