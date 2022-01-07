; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_namecheck.c_entity_namecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_namecheck.c_entity_namecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@NAME_ERR_TOOLONG = common dso_local global i32 0, align 4
@NAME_ERR_LEADING_SLASH = common dso_local global i32 0, align 4
@NAME_ERR_EMPTY_COMPONENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@NAME_ERR_TRAILING_SLASH = common dso_local global i32 0, align 4
@NAME_ERR_INVALCHAR = common dso_local global i32 0, align 4
@NAME_ERR_MULTIPLE_DELIMITERS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @entity_namecheck(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @NAME_ERR_TOOLONG, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  store i32 -1, i32* %4, align 4
  br label %184

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @NAME_ERR_LEADING_SLASH, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  store i32 -1, i32* %4, align 4
  br label %184

36:                                               ; preds = %23
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @NAME_ERR_EMPTY_COMPONENT, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  store i32 -1, i32* %4, align 4
  br label %184

49:                                               ; preds = %36
  %50 = load i8*, i8** %5, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i64, i64* @B_FALSE, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %181, %49
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %76, %52
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 64
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 35
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %69, %64, %59, %54
  %75 = phi i1 [ false, %64 ], [ false, %59 ], [ false, %54 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  br label %54

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @NAME_ERR_TRAILING_SLASH, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  store i32 -1, i32* %4, align 4
  br label %184

97:                                               ; preds = %84, %79
  %98 = load i8*, i8** %9, align 8
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %124, %97
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %99
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @valid_char(i8 signext %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 37
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* @NAME_ERR_INVALCHAR, align 4
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %7, align 8
  store i8 %120, i8* %121, align 1
  br label %122

122:                                              ; preds = %116, %113
  store i32 -1, i32* %4, align 4
  br label %184

123:                                              ; preds = %108, %103
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %11, align 8
  br label %99

127:                                              ; preds = %99
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 64
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 35
  br i1 %136, label %137, label %149

137:                                              ; preds = %132, %127
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32*, i32** %6, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @NAME_ERR_MULTIPLE_DELIMITERS, align 4
  %145 = load i32*, i32** %6, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  store i32 -1, i32* %4, align 4
  br label %184

147:                                              ; preds = %137
  %148 = load i64, i64* @B_TRUE, align 8
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %147, %132
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = icmp eq i8* %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32*, i32** %6, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @NAME_ERR_EMPTY_COMPONENT, align 4
  %158 = load i32*, i32** %6, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  store i32 -1, i32* %4, align 4
  br label %184

160:                                              ; preds = %149
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %184

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 47
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32*, i32** %6, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @NAME_ERR_TRAILING_SLASH, align 4
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %174
  store i32 -1, i32* %4, align 4
  br label %184

181:                                              ; preds = %171, %166
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %9, align 8
  br label %52

184:                                              ; preds = %180, %165, %159, %146, %122, %96, %48, %35, %22
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @valid_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
