; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_text_em.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_text_em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.roff_node*, %struct.roff_node* }
%struct.roff_node = type { i64, i8* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@MANDOCERR_DASHDASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, i32, i8*)* @check_text_em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_text_em(%struct.roff_man* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.roff_node*, align 8
  %10 = alloca %struct.roff_node*, align 8
  %11 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %13 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.roff_node*, %struct.roff_node** %15, align 8
  store %struct.roff_node* %16, %struct.roff_node** %9, align 8
  %17 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %18 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.roff_node*, %struct.roff_node** %20, align 8
  store %struct.roff_node* %21, %struct.roff_node** %10, align 8
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %177, %4
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %180

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 45
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  br label %177

41:                                               ; preds = %34
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  br label %50

59:                                               ; preds = %50
  br label %177

60:                                               ; preds = %41
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = icmp sgt i64 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 -2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 32
  br i1 %72, label %85, label %73

73:                                               ; preds = %67, %60
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 32
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %67
  br label %177

86:                                               ; preds = %79, %73
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = icmp sgt i64 %91, 2
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -3
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @isalpha(i8 zeroext %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %163, label %129

99:                                               ; preds = %86
  %100 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %101 = icmp ne %struct.roff_node* %100, null
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %104 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ROFFT_TEXT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %102
  %109 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %110 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %117 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  %120 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %118, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @isalpha(i8 zeroext %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %163, label %129

129:                                              ; preds = %115, %108, %102, %99, %93
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @isalpha(i8 zeroext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %176

147:                                              ; preds = %135, %129
  %148 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %149 = icmp ne %struct.roff_node* %148, null
  br i1 %149, label %150, label %176

150:                                              ; preds = %147
  %151 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %152 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ROFFT_TEXT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %150
  %157 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %158 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i8, i8* %159, align 1
  %161 = call i32 @isalpha(i8 zeroext %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %156, %141, %115, %93
  %164 = load i32, i32* @MANDOCERR_DASHDASH, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i8*, i8** %11, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = add nsw i32 %166, %172
  %174 = sub nsw i32 %173, 1
  %175 = call i32 @mandoc_msg(i32 %164, i32 %165, i32 %174, i32* null)
  br label %180

176:                                              ; preds = %156, %150, %147, %141
  br label %177

177:                                              ; preds = %176, %85, %59, %40
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %11, align 8
  br label %23

180:                                              ; preds = %163, %23
  ret void
}

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
