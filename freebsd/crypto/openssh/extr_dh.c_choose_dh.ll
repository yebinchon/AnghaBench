; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_choose_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_choose_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhgroup = type { i32, i32, i32 }

@_PATH_DH_MODULI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"WARNING: could not open %s (%s), using fixed modulus\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"WARNING: no suitable primes in %s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"WARNING: line %d disappeared in %s, giving up\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @choose_dh(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dhgroup, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* @_PATH_DH_MODULI, align 4
  %17 = call i32* @fopen(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @_PATH_DH_MODULI, align 4
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @dh_new_group_fallback(i32 %24)
  store i32* %25, i32** %4, align 8
  br label %163

26:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %86, %55, %38, %26
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @getline(i8** %9, i64* %10, i32* %28)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @parse_prime(i32 %34, i8* %35, %struct.dhgroup* %15)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %27

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BN_clear_free(i32 %41)
  %43 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BN_clear_free(i32 %44)
  %46 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %39
  br label %27

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %61
  %76 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %71, %66
  %79 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %27

87:                                               ; preds = %27
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @rewind(i32* %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32, i32* @_PATH_DH_MODULI, align 4
  %98 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = call i32* @dh_new_group_fallback(i32 %99)
  store i32* %100, i32** %4, align 8
  br label %163

101:                                              ; preds = %87
  store i32 0, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @arc4random_uniform(i32 %102)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %134, %113, %101
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @getline(i8** %9, i64* %10, i32* %105)
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %142

108:                                              ; preds = %104
  %109 = load i32, i32* %14, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @parse_prime(i32 %109, i8* %110, %struct.dhgroup* %15)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %104

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %134, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129, %124, %119, %114
  %135 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @BN_clear_free(i32 %136)
  %138 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @BN_clear_free(i32 %139)
  br label %104

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %104
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @free(i8* %143)
  store i8* null, i8** %9, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @fclose(i32* %145)
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @_PATH_DH_MODULI, align 4
  %154 = call i32 (i8*, i32, ...) @logit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32* @dh_new_group_fallback(i32 %155)
  store i32* %156, i32** %4, align 8
  br label %163

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.dhgroup, %struct.dhgroup* %15, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32* @dh_new_group(i32 %159, i32 %161)
  store i32* %162, i32** %4, align 8
  br label %163

163:                                              ; preds = %157, %151, %94, %19
  %164 = load i32*, i32** %4, align 8
  ret i32* %164
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @logit(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @dh_new_group_fallback(i32) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @parse_prime(i32, i8*, %struct.dhgroup*) #1

declare dso_local i32 @BN_clear_free(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @arc4random_uniform(i32) #1

declare dso_local i32* @dh_new_group(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
